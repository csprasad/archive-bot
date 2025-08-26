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
| 189 | https://github.com/ViniciusDeep/Revill | Archived |
| 329 | https://github.com/cocoa-mhlw/cocoa | Archived |
| 334 | https://github.com/chadaustin/passdrop | Archived |
| 442 | https://github.com/groue/GRDBCombine | Archived |
| 450 | https://github.com/firebase/friendlyeats-ios | Archived |
| 451 | https://github.com/google/mechahamster | Archived |
| 475 | https://github.com/inamiy/Harvest-SwiftUI-Gallery | Archived |
| 492 | https://github.com/insidegui/AnimojiStudio | Archived |
| 493 | https://github.com/incipher/einmal | Archived |
| 509 | https://github.com/immuni-app/immuni-app-ios | Archived |
| 625 | https://github.com/mongodb-developer/BlackJackTrainer | Archived |
| 626 | https://github.com/microdotblog/microblog-ios | Archived |
| 628 | https://github.com/metabolist/metatext | Archived |
| 662 | https://github.com/netguru/baby-monitor-client-ios | Archived |
| 742 | https://github.com/razeware/emitron-iOS | Archived |
| 826 | https://github.com/saulamsal/netflix-ui | Forbidden (rate limit?) |

*Last updated: August 26, 2025 at 12:52 AM UTC*  
*Last checked: August 26, 2025 at 12:52 AM UTC*