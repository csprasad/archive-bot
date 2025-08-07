# archive-bot

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
   Repositories identified as archived or inaccessible are listed in a table under the `Repository Archive Status` section in this `README.md` file.

5. **Updates Timestamps**  
   - A **Last Checked** timestamp (when the scan ran)
   - A **Last Updated** timestamp (if the table was modified)


## Repository Archive Status

| # | Repository URL | Status |
|---|----------------|--------|
| 209 | https://github.com/ViniciusDeep/Revill | Archived |
| 308 | https://github.com/bitwarden/mobile | Archived |
| 334 | https://github.com/cds-snc/covid-alert-app | Archived |
| 335 | https://github.com/cocoa-mhlw/cocoa | Archived |
| 360 | https://github.com/chadaustin/passdrop | Archived |
| 361 | https://github.com/davedelong/MVCTodo | Archived |
| 444 | https://github.com/firebase/friendlyeats-ios | Archived |
| 470 | https://github.com/groue/GRDBCombine | Archived |
| 473 | https://github.com/google/mechahamster | Archived |
| 495 | https://github.com/insidegui/AnimojiStudio | Archived |
| 496 | https://github.com/inamiy/Harvest-SwiftUI-Gallery | Archived |
| 502 | https://github.com/immuni-app/immuni-app-ios | Archived |
| 507 | https://github.com/incipher/einmal | Archived |
| 511 | https://github.com/ivan-magda/Californication | Archived |
| 625 | https://github.com/metabolist/metatext | Archived |
| 629 | https://github.com/microdotblog/microblog-ios | Archived |
| 632 | https://github.com/minvws/nl-covid19-notification-app-ios | Archived |
| 679 | https://github.com/mongodb-developer/BlackJackTrainer | Archived |
| 694 | https://github.com/openfoodfacts/openfoodfacts-ios | Archived |
| 725 | https://github.com/netguru/baby-monitor-client-ios | Archived |
| 746 | https://github.com/razeware/emitron-iOS | Archived |
| 751 | https://github.com/rursache/ToDoList | Archived |
| 795 | https://github.com/sonsongithub/reddift | Archived |
| 804 | https://github.com/soroushchehresa/iran-coronavirus | Archived |
| 811 | https://github.com/standardnotes/mobile | Archived |
| 856 | https://github.com/tpgoffline/tpg-offline-iOS | Archived |
| 869 | https://github.com/ukhsa-collaboration/covid-19-app-ios-ag-public | Archived |

*Last updated: August 7, 2025 at 12:59 AM UTC*  
*Last checked: August 7, 2025 at 12:59 AM UTC*