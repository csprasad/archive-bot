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
   Repositories identified as archived or inaccessible are listed in this `README.md` table under the `## Repository Archive Status` section.

5. **Updates Timestamps**  
   - A **Last Checked** timestamp (when the scan ran)
   - A **Last Updated** timestamp (if the table was modified)

## Schedule

- Runs automatically: Every Sunday, Tuesday, and Thursday at 00:00 UTC
- Can also be triggered manually via the Actions tab

## Notes
- Only repositories not already marked as "archive" in the upstream JSON are considered.
- This bot is not a generic linter for awesome lists.
- It’s purpose-built for helping maintain [`dkhamsing/open-source-ios-apps`](https://github.com/dkhamsing/open-source-ios-apps).

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

