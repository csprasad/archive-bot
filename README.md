# GitHub Repo Archive Detective Bot

A Python bot that checks the archived status of GitHub repositories listed in a JSON file, such as [dkhamsing/open-source-ios-apps](https://github.com/dkhamsing/open-source-ios-apps). It runs weekly via GitHub Actions, updating this README with a table of results.

> [!IMPORTANT]  
> Under development.
> Please report any issues!

## Features

- Fetches repository links from a JSON file, skipping those tagged with "archive".
- Supports a `.repoignore` file to exclude specific repositories.
- Uses the GitHub API to check if repositories are archived.
- Updates this README with a markdown table of results.
- Provides command-line options for custom JSON URLs and filtering (e.g., show only archived repos).
- Logs errors to `archive_checker.log` for debugging.
- Runs for free using GitHub API and GitHub Actions.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/github-repo-archive-dectective-bot.git
   cd github-repo-archive-dectective-bot
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. (Optional) Set a GitHub API token for local runs to avoid rate limits:
   ```bash
   export GITHUB_TOKEN="your_token_here"
   ```

## Usage

Run the bot locally to check repository statuses and update this README:
```bash
python archive_checker.py
```

### Command-Line Options

- `--json-url <url>`: Specify a custom JSON file URL (default: [dkhamsing/open-source-ios-apps](https://github.com/dkhamsing/open-source-ios-apps)).
- `--only-archived`: Include only archived repositories in the output.

Example with custom URL and filtering:
```bash
python archive_checker.py --json-url https://example.com/repos.json --only-archived
```

The bot will:
- Fetch the JSON file.
- Skip repositories listed in `.repoignore`.
- Query the GitHub API for each repository’s archived status.
- Update the `Repository Archive Status` section below with a table.
- Log errors to `archive_checker.log`.

## Repository Archive Status

| Repository URL | Status |
|---------------|--------|
| https://github.com/kurozora/kurozora-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/basarsubasi/simplefitnessapp | Forbidden (possibly private or rate limit exceeded) |

*Last updated: 2025-05-21 16:14:40 UTC*
