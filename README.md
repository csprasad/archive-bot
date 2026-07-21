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

> No archives found in this project.

### ⚠️ Stale Repositories (8+ years without commit)

> No stale repositories found. All active projects have recent commits within the last 8 years.

### ‼️ Unavailable Repositories

| # | Repository URL | Status |
|---|----------------|--------|
| 1 | https://github.com/Sage-Bionetworks/CardiorespiratoryFitness-iOS | Not Found |

*Last updated: July 12, 2026 at 1:42 AM UTC*  
*Last checked: July 21, 2026 at 1:28 AM UTC*