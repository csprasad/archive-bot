import requests
import json
import re
import os
import datetime
from time import sleep

# Constants
JSON_URL = "https://raw.githubusercontent.com/dkhamsing/open-source-ios-apps/master/contents.json"
API_BASE = "https://api.github.com/repos"
README_FILE = "README.md"
START_MARKER = "## Repository Archive Status"
GITHUB_TOKEN = os.getenv("GITHUB_TOKEN")
HEADERS = {"Accept": "application/vnd.github.v3+json"}
if GITHUB_TOKEN:
    HEADERS["Authorization"] = f"token {GITHUB_TOKEN}"

def fetch_json():
    try:
        response = requests.get(JSON_URL, timeout=10)
        response.raise_for_status()
        return response.json()
    except Exception as e:
        print(f"Error fetching JSON: {e}")
        return None

def extract_repo_links(data):
    links = set()
    for category, apps in data.items():
        if isinstance(apps, list):
            for app in apps:
                if "archive" in app.get("tags", []):
                    continue
                source = app.get("source")
                if isinstance(source, str) and source.startswith("https://github.com"):
                    if re.match(r"https://github\.com/[^/]+/[^/]+/?$", source):
                        links.add(source)
    return sorted(links)

def check_repo_status(url):
    match = re.match(r"https://github.com/([^/]+)/([^/]+)", url)
    if not match:
        return url, "Invalid URL"
    owner, repo = match.groups()
    api_url = f"{API_BASE}/{owner}/{repo}"
    try:
        response = requests.get(api_url, headers=HEADERS, timeout=10)
        if response.status_code == 200:
            data = response.json()
            return url, "Archived" if data.get("archived") else None
        elif response.status_code == 404:
            return url, "Not Found"
        elif response.status_code == 403:
            return url, "Forbidden (possibly private or rate limit exceeded)"
        return url, f"Error {response.status_code}"
    except Exception as e:
        return url, f"Exception: {str(e)}"

def update_readme(results):
    with open(README_FILE, "r", encoding="utf-8") as f:
        content = f.read()

    if START_MARKER not in content:
        print("START_MARKER not found in README.")
        return

    # Create markdown table for repos with status
    table = ["| Repository URL | Status |", "|---------------|--------|"]
    for url, status in results:
        if status:
            table.append(f"| {url} | {status} |")

    table.append(f"\n*Last updated: {datetime.datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S UTC')}*")

    # Replace old section
    new_section = f"{START_MARKER}\n\n" + "\n".join(table)
    updated_content = re.sub(
        rf"{re.escape(START_MARKER)}.*", 
        new_section, 
        content, 
        flags=re.DOTALL
    )

    with open(README_FILE, "w", encoding="utf-8") as f:
        f.write(updated_content)

    print(f"Updated {README_FILE} successfully.")

def main():
    print("Fetching JSON data...")
    data = fetch_json()
    if not data:
        print("Failed to fetch JSON. Exiting.")
        return

    print("Extracting repository links...")
    repo_links = extract_repo_links(data)
    print(f"Found {len(repo_links)} repositories to check.")

    results = []
    for i, url in enumerate(repo_links, 1):
        print(f"Checking {i}/{len(repo_links)}: {url}")
        result = check_repo_status(url)
        results.append(result)
        sleep(0.05)  # To avoid hitting rate limits

    print("Updating README...")
    update_readme(results)

    archived = sum(1 for _, s in results if s == "Archived")
    not_found = sum(1 for _, s in results if s == "Not Found")
    forbidden = sum(1 for _, s in results if s and "Forbidden" in s)

    print(f"\nSummary:")
    print(f"  Archived: {archived}")
    print(f"  Not Found: {not_found}")
    print(f"  Forbidden: {forbidden}")

if __name__ == "__main__":
    main()
