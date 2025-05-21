import requests
import json
import re
import os
import argparse
import logging
import datetime
from time import sleep
from tqdm import tqdm

# Set up logging
logging.basicConfig(filename="archive_checker.log", level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")

# Default JSON URL
DEFAULT_JSON_URL = "https://raw.githubusercontent.com/dkhamsing/open-source-ios-apps/master/contents.json"

# GitHub API base URL
API_BASE = "https://api.github.com/repos"

# GitHub API token (from environment variable)
GITHUB_TOKEN = os.getenv("GITHUB_TOKEN")
HEADERS = {
    "Accept": "application/vnd.github.v3+json"
}
if GITHUB_TOKEN:
    HEADERS["Authorization"] = f"token {GITHUB_TOKEN}"

# README file
README_FILE = "README.md"

def parse_args():
    parser = argparse.ArgumentParser(description="Check archived status of GitHub repositories.")
    parser.add_argument("--json-url", default=DEFAULT_JSON_URL, help="URL of the JSON file with repository links")
    parser.add_argument("--only-archived", action="store_true", help="Show only archived repositories in output")
    return parser.parse_args()

def fetch_json(json_url):
    try:
        response = requests.get(json_url)
        response.raise_for_status()
        logging.info(f"Fetched JSON from {json_url}")
        return response.json()
    except Exception as e:
        logging.error(f"Error fetching JSON from {json_url}: {e}")
        return None

def load_ignore_list():
    try:
        with open(".repoignore", "r") as f:
            return {line.strip() for line in f if line.strip() and not line.startswith("#")}
    except FileNotFoundError:
        return set()

def extract_repo_links(data, ignore_list):
    links = []
    for category, apps in data.items():
        if isinstance(apps, list):
            for app in apps:
                if "tags" in app and "archive" not in app.get("tags", []) and "source" in app:
                    source = app["source"]
                    if isinstance(source, str) and source.startswith("https://github.com") and source not in ignore_list:
                        links.append(source)
    return links

def check_repo_status(url):
    match = re.match(r"https://github.com/([^/]+)/([^/]+)", url)
    if not match:
        logging.warning(f"Invalid URL: {url}")
        return url, "Invalid URL"
    
    owner, repo = match.groups()
    api_url = f"{API_BASE}/{owner}/{repo}"
    
    for attempt in range(3):
        try:
            response = requests.get(api_url, headers=HEADERS, timeout=10)
            if response.status_code == 200:
                data = response.json()
                return url, "Archived" if data.get("archived", False) else "Not Archived"
            elif response.status_code == 404:
                return url, "Not Found"
            elif response.status_code == 403:
                return url, "Forbidden (possibly private or rate limit exceeded)"
            elif response.status_code == 429:
                logging.warning(f"Rate limit exceeded for {url}, retrying after delay")
                sleep(10 * (2 ** attempt))  # Exponential backoff
                continue
            else:
                return url, f"Error: {response.status_code}"
        except Exception as e:
            logging.error(f"Exception for {url}: {e}")
            if attempt == 2:
                return url, f"Exception: {str(e)}"
        sleep(2)
    return url, "Failed after retries"

def update_readme(results, only_archived):
    if only_archived:
        results = [(url, status) for url, status in results if status == "Archived"]
    
    # Create markdown table
    table = ["| Repository URL | Status |", "|---------------|--------|"]
    table.extend([f"| {url} | {status} |" for url, status in results])
    
    # Read existing README content
    try:
        with open(README_FILE, "r") as f:
            content = f.read()
    except FileNotFoundError:
        content = ""

    # Find or create the results section
    results_section = "## Repository Archive Status\n\n"
    marker = "## Repository Archive Status"
    results_content = "\n".join(table) + f"\n\n*Last updated: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S UTC')}*"
    
    if marker in content:
        content = content[:content.index(marker)] + results_section + results_content
    else:
        content = content.rstrip() + "\n\n" + results_section + results_content

    # Write updated content
    with open(README_FILE, "w") as f:
        f.write(content)
    logging.info(f"Updated {README_FILE} with {len(results)} results")

def print_summary(results):
    status_counts = {}
    for _, status in results:
        status_counts[status] = status_counts.get(status, 0) + 1
    print("\nSummary:")
    for status, count in status_counts.items():
        print(f"{status}: {count}")

def main():
    args = parse_args()
    print(f"Fetching JSON data from {args.json_url}...")
    data = fetch_json(args.json_url)
    if not data:
        print("Failed to fetch JSON data. Exiting.")
        return
    
    print("Loading ignore list...")
    ignore_list = load_ignore_list()
    
    print("Extracting repository links...")
    repo_links = extract_repo_links(data, ignore_list)
    print(f"Found {len(repo_links)} repository links to check.")
    
    results = []
    for url in tqdm(repo_links, desc="Checking repositories"):
        url, status = check_repo_status(url)
        results.append((url, status))
        # sleep(0.5)
    
    print(f"Updating {README_FILE}...")
    update_readme(results, args.only_archived)
    
    print_summary(results)
    print("Done!")

if __name__ == "__main__":
    main()