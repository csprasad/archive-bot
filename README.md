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
| https://github.com/Chubby-Apps/SafeTimer | Archived |
| https://github.com/CodeHubApp/CodeHub | Archived |
| https://github.com/GitHawkApp/GitHawk | Archived |
| https://github.com/GroupeMINASTE/FMobile-iOS | Archived |
| https://github.com/Haptic-Apps/Slide-iOS | Archived |
| https://github.com/HassanElDesouky/VoiceMemosClone | Archived |
| https://github.com/IvanBogdantsev/Toilet-Radar-Paris | Archived |
| https://github.com/LumingYin/PDFToKeynote-iOS | Archived |
| https://github.com/MoralCode/MetricTime | Archived |
| https://github.com/MoralCode/MiamiSunglasses | Archived |
| https://github.com/NathanFallet/MorpionTPE-iOS | Archived |
| https://github.com/THLfi/koronavilkku-ios | Archived |
| https://github.com/TUM-Dev/Campus-iOS | Archived |
| https://github.com/TrustWallet/trust-wallet-ios | Archived |
| https://github.com/ViniciusDeep/Revill | Archived |
| https://github.com/YusuFKaan48/News | Not Found |
| https://github.com/admin-ch/CovidCertificate-App-iOS | Archived |
| https://github.com/artsy/eidolon | Archived |
| https://github.com/bartonhammond/snowflake | Archived |
| https://github.com/bitwarden/mobile | Archived |
| https://github.com/cds-snc/covid-alert-app | Archived |
| https://github.com/chadaustin/passdrop | Archived |
| https://github.com/cocoa-mhlw/cocoa | Archived |
| https://github.com/corona-warn-app/cwa-app-ios | Archived |
| https://github.com/covid19cz/erouska-ios | Archived |
| https://github.com/davedelong/MVCTodo | Archived |
| https://github.com/google/mechahamster | Archived |
| https://github.com/groue/GRDBCombine | Archived |
| https://github.com/immuni-app/immuni-app-ios | Archived |
| https://github.com/inamiy/Harvest-SwiftUI-Gallery | Archived |
| https://github.com/incipher/einmal | Archived |
| https://github.com/insidegui/AnimojiStudio | Archived |
| https://github.com/ivan-magda/Californication | Archived |
| https://github.com/ivan-magda/Tagger | Archived |
| https://github.com/ivan-magda/UpcomingMovies | Archived |
| https://github.com/kryptco/krypton-ios | Archived |
| https://github.com/metabolist/metatext | Archived |
| https://github.com/microdotblog/microblog-ios | Archived |
| https://github.com/minvws/nl-covid19-notification-app-ios | Archived |
| https://github.com/mkhrapov/sansumoku | Archived |
| https://github.com/mkhrapov/ultimate-peg-solitaire | Archived |
| https://github.com/mongodb-developer/BlackJackTrainer | Archived |
| https://github.com/netguru/baby-monitor-client-ios | Archived |
| https://github.com/openfoodfacts/openfoodfacts-ios | Archived |
| https://github.com/razeware/emitron-iOS | Archived |
| https://github.com/rursache/ToDoList | Archived |
| https://github.com/sonsongithub/reddift | Archived |
| https://github.com/soroushchehresa/iran-coronavirus | Archived |
| https://github.com/standardnotes/mobile | Archived |
| https://github.com/tpgoffline/tpg-offline-iOS | Archived |
| https://github.com/ukhsa-collaboration/covid-19-app-ios-ag-public | Archived |
| https://github.com/xYello/ThePost | Archived |

*Last updated: 2025-05-22 09:35:12 UTC*