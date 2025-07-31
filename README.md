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
| 195 | https://github.com/TelemetryDeck/TelemetryViewer | Archived |
| 213 | https://github.com/ViniciusDeep/Revill | Archived |
| 316 | https://github.com/cds-snc/covid-alert-app | Archived |
| 318 | https://github.com/bitwarden/mobile | Archived |
| 330 | https://github.com/chadaustin/passdrop | Archived |
| 347 | https://github.com/corona-warn-app/cwa-app-ios | Archived |
| 358 | https://github.com/cocoa-mhlw/cocoa | Archived |
| 360 | https://github.com/davedelong/MVCTodo | Archived |
| 365 | https://github.com/covid19cz/erouska-ios | Archived |
| 470 | https://github.com/groue/GRDBCombine | Archived |
| 478 | https://github.com/google/mechahamster | Archived |
| 494 | https://github.com/incipher/einmal | Archived |
| 501 | https://github.com/ivan-magda/Californication | Archived |
| 504 | https://github.com/inamiy/Harvest-SwiftUI-Gallery | Archived |
| 511 | https://github.com/immuni-app/immuni-app-ios | Archived |
| 522 | https://github.com/insidegui/AnimojiStudio | Archived |
| 628 | https://github.com/microdotblog/microblog-ios | Archived |
| 632 | https://github.com/metabolist/metatext | Archived |
| 648 | https://github.com/mongodb-developer/BlackJackTrainer | Archived |
| 651 | https://github.com/minvws/nl-covid19-notification-app-ios | Archived |
| 672 | https://github.com/netguru/baby-monitor-client-ios | Archived |
| 710 | https://github.com/openfoodfacts/openfoodfacts-ios | Archived |
| 740 | https://github.com/razeware/emitron-iOS | Archived |
| 767 | https://github.com/rursache/ToDoList | Archived |
| 798 | https://github.com/sonsongithub/reddift | Archived |
| 813 | https://github.com/soroushchehresa/iran-coronavirus | Archived |
| 823 | https://github.com/standardnotes/mobile | Archived |
| 849 | https://github.com/tpgoffline/tpg-offline-iOS | Archived |
| 867 | https://github.com/ukhsa-collaboration/covid-19-app-ios-ag-public | Archived |

*Last updated: July 31, 2025 at 12:58 AM (GMT)*
*Last checked: July 31, 2025 at 12:58 AM (GMT)*