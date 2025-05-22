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
GITHUB_TOKEN = os.getenv("GITHUB_TOKEN")
HEADERS = {"Accept": "application/vnd.github.v3+json"}
if GITHUB_TOKEN:
    HEADERS["Authorization"] = f"token {GITHUB_TOKEN}"

def fetch_json():
    try:
        response = requests.get(JSON_URL, timeout=10)
        response.raise_for_status()
        return response.json()
    except:
        return None

def extract_repo_links(data):
    links = set()
    for category, apps in data.items():
        if isinstance(apps, list):
            for app in apps:
                source = app.get("source")
                if (isinstance(source, str) and 
                    source.startswith("https://github.com") and 
                    re.match(r"https://github\.com/[^/]+/[^/]+/?$", source) and
                    "archive" not in app.get("tags", [])):
                    links.add(source)
    with open("extracted_links.txt", "w") as f:
        f.write("\n".join(sorted(links)))
    return sorted(links)

def check_repo_status(url):
    match = re.match(r"https://github.com/([^/]+)/([^/]+)", url)
    if not match:
        return url, None
    owner, repo = match.groups()
    api_url = f"{API_BASE}/{owner}/{repo}"
    try:
        response = requests.get(api_url, headers=HEADERS, timeout=10)
        if response.status_code == 200:
            return url, "Archived" if response.json().get("archived") else None
        elif response.status_code == 404:
            return url, "Not Found"
        return url, None
    except:
        return url, None

def update_readme(repos):
    table = ["| Repository URL | Status |", "|---------------|--------|"]
    table.extend([f"| {url} | {status} |" for url, status in repos if status])
    content = "## Archived or Not Found Repositories\n\n" + "\n".join(table) + \
              f"\n\n*Last updated: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S UTC')}*"
    with open(README_FILE, "w") as f:
        f.write(content)

def main():
    data = fetch_json()
    if not data:
        print("Failed to fetch JSON. Exiting.")
        return
    
    print("Extracting repository links...")
    repo_links = extract_repo_links(data)
    print(f"Found {len(repo_links)} repository links to check.")
    
    repos = []
    for i, url in enumerate(repo_links, 1):
        print(f"Checking {i}/{len(repo_links)}: {url}")
        url, status = check_repo_status(url)
        repos.append((url, status))
        sleep(0.05)
    
    print(f"Updating {README_FILE}...")
    update_readme(repos)
    
    archived_count = sum(1 for _, status in repos if status == "Archived")
    not_found_count = sum(1 for _, status in repos if status == "Not Found")
    print(f"\nSummary:\nTotal checked: {len(repo_links)}\nArchived: {archived_count}\nNot Found: {not_found_count}")

if __name__ == "__main__":
    main()
