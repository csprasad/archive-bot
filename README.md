# archive-bot

> A GitHub Action that checks for **archived**, **inaccessible**, and **stale** (8+ years without commits) repositories in [dkhamsing/open-source-ios-apps](https://github.com/dkhamsing/open-source-ios-apps).

## Overview

This bot helps keep the [open-source-ios-apps](https://github.com/dkhamsing/open-source-ios-apps) list accurate by:
- Identifying GitHub repositories that have been **archived** or are **no longer available**
- Detecting **stale repositories** that haven't had commits in 8+ years

It scans the list's `content.json`, intelligently caches results to avoid rate limits, and writes findings to this repo's `README.md` for easy review.

## Features

| Feature | Description |
|---------|-------------|
| 🗄️ **Archive Detection** | Finds repositories that have been archived by owners |
| 🔍 **Inaccessible Repos** | Identifies 404 (Not Found) and 403 (Forbidden) repos |
| ⏰ **Staleness Detection** | Flags repos with no commits in 8+ years |
| 💾 **Smart Caching** | 7-day cache to avoid GitHub API rate limits |
| 📊 **Markdown Reports** | Clean, readable tables with timestamps |
| 🔄 **Automated** | Runs on cron schedule (Sun/Tue/Thu) |

## How It Works

1. **Fetches the Source List**  
   The bot downloads the latest `content.json` file from the [`dkhamsing/open-source-ios-apps`](https://github.com/dkhamsing/open-source-ios-apps) repository.

2. **Filters Out Archived Entries**  
   Projects already tagged with `"archive"` in the JSON are excluded from further processing. This avoids unnecessary checks.

3. **Checks Cache First**  
   Before calling the GitHub API, the bot checks its local cache (`.cache.json`). Repositories checked in the last 7 days are reused, saving API quota.

4. **Validates Repository Status & Activity**  
   For each remaining project, the bot uses the GitHub API to verify:
   - **Existence**: Still exists or returns 404/403
   - **Archive status**: Has the repo been archived?
   - **Last commit date**: When was the last push? (`pushed_at` field)
   - **Staleness**: Calculates years since last commit

5. **Generates Markdown Tables**  
   Results are organized into two sections:
   - **Archived */* Inaccessible repos** (if any)
   - **Stale Repositories** (8+ years without commits)

6. **Updates Timestamps**  
   - A **Last Checked** timestamp (when the scan ran)
   - A **Last Updated** timestamp (if any table was modified)

## Repository Archive Status


### 🏛️ Archived Repositories

| # | Repository URL | Status |
|---|----------------|--------|
| 1 | https://github.com/triangledraw/TriangleDraw-iOS | Archived |

### ⚠️ Stale Repositories (8+ years without commit)

| # | Repository URL | Last Commit Date | Years Inactive |
|---|----------------|------------------|----------------|
| 1 | https://github.com/4np/UitzendingGemist | 2018-02-08 | 8 years |
| 2 | https://github.com/ResearchKit/MyHeartCounts | 2015-10-27 | 10 years |
| 3 | https://github.com/chrisballinger/BLEMeshChat | 2017-05-25 | 8 years |
| 4 | https://github.com/dkhamsing/how-much | 2017-04-27 | 9 years |
| 5 | https://github.com/ericjohnson/canabalt-ios | 2011-08-20 | 14 years |
| 6 | https://github.com/id-Software/DOOM-IOS2 | 2016-07-06 | 9 years |
| 7 | https://github.com/raaxis/nds4ios | 2017-03-11 | 9 years |
| 8 | https://github.com/rnystrom/HackerNewsReader | 2018-01-18 | 8 years |
| 9 | https://github.com/sephine/lumio | 2016-06-07 | 9 years |
| 10 | https://github.com/thiagolioy/marvelapp | 2017-07-23 | 8 years |

*Last updated: May 17, 2026 at 1:59 AM UTC*  
*Last checked: May 17, 2026 at 1:59 AM UTC*