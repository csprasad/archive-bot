# Archive Detective Bot for Awesome Projects

This bot checks the current archive status of projects listed in awesome collections.

The bot runs every Sun/Tue/Thu at ~00:00 UTC (±5 mins) via GitHub Actions and updates this README with the latest results.

> [!IMPORTANT] 
> It currently works with [dkhamsing/open-source-ios-apps](https://github.com/dkhamsing/open-source-ios-apps), scanning its JSON list to determine if actively listed repositories are archived or unavailable.


## How It Works

- Extracts repository URLs from a JSON source (currently using [dkhamsing/open-source-ios-apps](https://github.com/dkhamsing/open-source-ios-apps)), skipping any entries tagged as "archive".
- Uses the GitHub API to check whether each repository is archived or inaccessible.
- Updates this README with a markdown table under the `Repository Archive Status` section.
- Logs any errors, forbidden responses, or rate-limiting issues to `archive_checker.log` for debugging.
- Runs automatically every Sun/Tue/Thu at ~00:00 UTC (±5 mins) via GitHub Actions.


## Repository Archive Status

| # | Repository URL | Status |
|---|----------------|--------|
| 201 | https://github.com/ViniciusDeep/Revill | Archived |
| 225 | https://github.com/TelemetryDeck/TelemetryViewer | Archived |
| 289 | https://github.com/bartonhammond/snowflake | Archived |
| 321 | https://github.com/bitwarden/mobile | Archived |
| 334 | https://github.com/cds-snc/covid-alert-app | Archived |
| 335 | https://github.com/covid19cz/erouska-ios | Archived |
| 348 | https://github.com/corona-warn-app/cwa-app-ios | Archived |
| 350 | https://github.com/cocoa-mhlw/cocoa | Archived |
| 356 | https://github.com/chadaustin/passdrop | Archived |
| 367 | https://github.com/davedelong/MVCTodo | Archived |
| 465 | https://github.com/google/mechahamster | Archived |
| 486 | https://github.com/groue/GRDBCombine | Archived |
| 489 | https://github.com/incipher/einmal | Archived |
| 490 | https://github.com/immuni-app/immuni-app-ios | Archived |
| 494 | https://github.com/insidegui/AnimojiStudio | Archived |
| 496 | https://github.com/ivan-magda/Californication | Archived |
| 498 | https://github.com/inamiy/Harvest-SwiftUI-Gallery | Archived |
| 642 | https://github.com/minvws/nl-covid19-notification-app-ios | Archived |
| 650 | https://github.com/microdotblog/microblog-ios | Archived |
| 652 | https://github.com/metabolist/metatext | Archived |
| 660 | https://github.com/mongodb-developer/BlackJackTrainer | Archived |
| 684 | https://github.com/netguru/baby-monitor-client-ios | Archived |
| 728 | https://github.com/openfoodfacts/openfoodfacts-ios | Archived |
| 743 | https://github.com/razeware/emitron-iOS | Archived |
| 771 | https://github.com/rursache/ToDoList | Archived |
| 800 | https://github.com/sonsongithub/reddift | Archived |
| 808 | https://github.com/soroushchehresa/iran-coronavirus | Archived |
| 834 | https://github.com/standardnotes/mobile | Archived |
| 847 | https://github.com/tpgoffline/tpg-offline-iOS | Archived |
| 865 | https://github.com/ukhsa-collaboration/covid-19-app-ios-ag-public | Archived |

*Last updated: July 30, 2025 at 9:21 AM (GMT)*
*Last checked: July 30, 2025 at 9:21 AM (GMT)*