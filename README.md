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
| 214 | https://github.com/ViniciusDeep/Revill | Archived |
| 302 | https://github.com/bitwarden/mobile | Archived |
| 327 | https://github.com/cds-snc/covid-alert-app | Archived |
| 339 | https://github.com/chadaustin/passdrop | Archived |
| 343 | https://github.com/covid19cz/erouska-ios | Archived |
| 347 | https://github.com/corona-warn-app/cwa-app-ios | Archived |
| 352 | https://github.com/cocoa-mhlw/cocoa | Archived |
| 374 | https://github.com/davedelong/MVCTodo | Archived |
| 456 | https://github.com/groue/GRDBCombine | Archived |
| 487 | https://github.com/insidegui/AnimojiStudio | Archived |
| 491 | https://github.com/google/mechahamster | Archived |
| 496 | https://github.com/inamiy/Harvest-SwiftUI-Gallery | Archived |
| 497 | https://github.com/ivan-magda/Californication | Archived |
| 498 | https://github.com/incipher/einmal | Archived |
| 500 | https://github.com/immuni-app/immuni-app-ios | Archived |
| 639 | https://github.com/microdotblog/microblog-ios | Archived |
| 642 | https://github.com/metabolist/metatext | Archived |
| 652 | https://github.com/mongodb-developer/BlackJackTrainer | Archived |
| 653 | https://github.com/minvws/nl-covid19-notification-app-ios | Archived |
| 677 | https://github.com/netguru/baby-monitor-client-ios | Archived |
| 700 | https://github.com/openfoodfacts/openfoodfacts-ios | Archived |
| 769 | https://github.com/rursache/ToDoList | Archived |
| 775 | https://github.com/razeware/emitron-iOS | Archived |
| 803 | https://github.com/sonsongithub/reddift | Archived |
| 807 | https://github.com/soroushchehresa/iran-coronavirus | Archived |
| 842 | https://github.com/tpgoffline/tpg-offline-iOS | Archived |
| 847 | https://github.com/ukhsa-collaboration/covid-19-app-ios-ag-public | Archived |
| 907 | https://github.com/standardnotes/mobile | Archived |

*Last updated: August 3, 2025 at 1:03 AM (GMT)*
*Last checked: August 3, 2025 at 1:03 AM (GMT)*