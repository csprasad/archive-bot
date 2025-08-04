# archive_bot

> A GitHub Action that checks for archived or inaccessible repositories in [dkhamsing/open-source-ios-apps](https://github.com/dkhamsing/open-source-ios-apps).

## Overview

This bot helps keep the [open-source-ios-apps](https://github.com/dkhamsing/open-source-ios-apps) list accurate by identifying GitHub repositories that have been archived or are no longer available. It scans the list’s `content.json`, skips entries already tagged "archive", and checks the rest via the GitHub API. The results are written to this repo’s `README.md` for easy review.


## How It Works

1. **Fetches the Source List**  
   The bot downloads the latest `content.json` file from the [`dkhamsing/open-source-ios-apps`](https://github.com/dkhamsing/open-source-ios-apps) repository.

2. **Filters Out Archived Entries**  
   Projects already tagged with `"archive"` in the JSON are excluded from further processing. This avoids unnecessary checks.

3. **Validates Repository Status**  
   For each remaining project, the bot uses the GitHub API to verify whether the repository:
   - Still exists
   - Has been archived
   - Returns a `404` (Not Found)
   - Returns a `403` (Forbidden — possibly due to rate limiting)

4. **Generates a Markdown Table**  
   Repositories identified as archived or inaccessible are listed in a table under the `## Repository Archive Status` section in this `README.md` file.

5. **Updates Timestamps**  
   - A **Last Checked** timestamp (when the scan ran)
   - A **Last Updated** timestamp (if the table was modified)

## Repository Archive Status

| # | Repository URL | Status |
|---|----------------|--------|
| 208 | https://github.com/ViniciusDeep/Revill | Archived |
| 312 | https://github.com/bitwarden/mobile | Archived |
| 334 | https://github.com/cds-snc/covid-alert-app | Archived |
| 342 | https://github.com/corona-warn-app/cwa-app-ios | Archived |
| 344 | https://github.com/chadaustin/passdrop | Archived |
| 345 | https://github.com/cocoa-mhlw/cocoa | Archived |
| 351 | https://github.com/davedelong/MVCTodo | Archived |
| 380 | https://github.com/covid19cz/erouska-ios | Archived |
| 446 | https://github.com/google/mechahamster | Archived |
| 478 | https://github.com/groue/GRDBCombine | Archived |
| 486 | https://github.com/inamiy/Harvest-SwiftUI-Gallery | Archived |
| 496 | https://github.com/insidegui/AnimojiStudio | Archived |
| 508 | https://github.com/incipher/einmal | Archived |
| 521 | https://github.com/immuni-app/immuni-app-ios | Archived |
| 532 | https://github.com/ivan-magda/Californication | Archived |
| 630 | https://github.com/metabolist/metatext | Archived |
| 633 | https://github.com/microdotblog/microblog-ios | Archived |
| 650 | https://github.com/minvws/nl-covid19-notification-app-ios | Archived |
| 657 | https://github.com/netguru/baby-monitor-client-ios | Archived |
| 659 | https://github.com/mongodb-developer/BlackJackTrainer | Archived |
| 751 | https://github.com/razeware/emitron-iOS | Archived |
| 768 | https://github.com/rursache/ToDoList | Archived |
| 798 | https://github.com/soroushchehresa/iran-coronavirus | Archived |
| 801 | https://github.com/sonsongithub/reddift | Archived |
| 809 | https://github.com/standardnotes/mobile | Archived |
| 811 | https://github.com/openfoodfacts/openfoodfacts-ios | Archived |
| 844 | https://github.com/tpgoffline/tpg-offline-iOS | Archived |
| 863 | https://github.com/ukhsa-collaboration/covid-19-app-ios-ag-public | Archived |

*Last updated: August 4, 2025 at 8:47 AM (GMT)*
*Last checked: August 4, 2025 at 8:47 AM (GMT)*
