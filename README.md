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

| Repository URL | Status |
|---------------|--------|
| https://github.com/Chubby-Apps/SafeTimer | Archived |
| https://github.com/CodeHubApp/CodeHub | Archived |
| https://github.com/GroupeMINASTE/FMobile-iOS | Archived |
| https://github.com/Haptic-Apps/Slide-iOS | Archived |
| https://github.com/HassanElDesouky/VoiceMemosClone | Archived |
| https://github.com/IvanBogdantsev/Toilet-Radar-Paris | Archived |
| https://github.com/MoralCode/MetricTime | Archived |
| https://github.com/MoralCode/MiamiSunglasses | Archived |
| https://github.com/NathanFallet/MorpionTPE-iOS | Archived |
| https://github.com/THLfi/koronavilkku-ios | Archived |
| https://github.com/TUM-Dev/Campus-iOS | Archived |
| https://github.com/ViniciusDeep/Revill | Archived |
| https://github.com/admin-ch/CovidCertificate-App-iOS | Archived |
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
| https://github.com/metabolist/metatext | Archived |
| https://github.com/microdotblog/microblog-ios | Archived |
| https://github.com/minvws/nl-covid19-notification-app-ios | Archived |
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

*Last updated: 2025-06-22 01:01:05 UTC*