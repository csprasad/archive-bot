# GitHub Repo Archive Detective Bot

A Python bot that checks the archived status of GitHub repositories listed in a JSON file, such as [dkhamsing/open-source-ios-apps](https://github.com/dkhamsing/open-source-ios-apps). It runs weekly via GitHub Actions, updating this README with a table of results.

> [!IMPORTANT]  
> Under development.
> Please report any issues!

## Features

- Fetches repository links from a JSON file, skipping those tagged with "archive".
- Supports a `.repoignore` file to exclude specific repositories.
- Uses the GitHub API to check if repositories are archived.
- Updates this README with a markdown table of results.
- Provides command-line options for custom JSON URLs and filtering (e.g., show only archived repos).
- Logs errors to `archive_checker.log` for debugging.
- Runs for free using GitHub API and GitHub Actions.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/github-repo-archive-dectective-bot.git
   cd github-repo-archive-dectective-bot
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. (Optional) Set a GitHub API token for local runs to avoid rate limits:
   ```bash
   export GITHUB_TOKEN="your_token_here"
   ```

## Usage

Run the bot locally to check repository statuses and update this README:
```bash
python archive_checker.py
```

### Command-Line Options

- `--json-url <url>`: Specify a custom JSON file URL (default: [dkhamsing/open-source-ios-apps](https://github.com/dkhamsing/open-source-ios-apps)).
- `--only-archived`: Include only archived repositories in the output.

Example with custom URL and filtering:
```bash
python archive_checker.py --json-url https://example.com/repos.json --only-archived
```

The bot will:
- Fetch the JSON file.
- Skip repositories listed in `.repoignore`.
- Query the GitHub API for each repository’s archived status.
- Update the `Repository Archive Status` section below with a table.
- Log errors to `archive_checker.log`.

## Repository Archive Status

| Repository URL | Status |
|---------------|--------|
| https://github.com/Chubby-Apps/SafeTimer | Archived |
| https://github.com/CodeHubApp/CodeHub | Archived |
| https://github.com/DaidoujiChen/Dai-Hentai | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Darktt/HealthKit-Swift | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DeluxeAlonso/UpcomingMovies | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DerLobi/Depressed | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DerekSelander/yacd | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/ACHNBrowserUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/GrailerApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/IceCubesApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/IcySky | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/MortyUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/MovieSwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/OSRSUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/SwiftHN | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/The-Roundtable | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DominatorVbN/DevSpotlight | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DreamingInBinary/Custom-ViewController-Transitions | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DreamingInBinary/Spend-Stack-Public | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/EhPanda-Team/EhPanda | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/EmergeTools/hackernews | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/EvgenyKarkan/Feeds4U | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/EvgenyKarkan/ScaryFlight | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/EvgenyKarkan/TrackMyTime | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Evolution-App/iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ExistOrLive/GithubClient | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/FlexMonkey/Filterpedia | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/FlexMonkey/ForceSketch | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/FlexMonkey/Plum-O-Meter | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/FlineDev/Prayer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/FranckNdame/swiftui.builds | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/FreeRDP/FreeRDP | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/G2Jose/ReactNative-HackerNews | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/GetStream/purposeful-ios-animations | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/GitHawkApp/GitHawk | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Glucosio/glucosio-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/GroupeMINASTE/FMobile-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/HSEIreland/covid-tracker-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/HabitRPG/habitica-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Haptic-Apps/Slide-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/HassanElDesouky/VoiceMemosClone | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/IFours/react-native-twitch | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ISBX/apprtc-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/IanKeen/TweetleDumb | Error 429 |
| https://github.com/Infomaniak/ios-kDrive | Error 429 |
| https://github.com/IvanBogdantsev/Toilet-Radar-Paris | Error 429 |
| https://github.com/Ivaskuu/travel-guide_app | Error 429 |
| https://github.com/JakeLin/SaveTheDot | Error 429 |
| https://github.com/JakeLin/SwiftLanguageWeather | Error 429 |
| https://github.com/Jasonette/JASONETTE-iOS | Error 429 |
| https://github.com/Jigsaw-Code/outline-apps | Error 429 |
| https://github.com/JohnWong/bus-today | Error 429 |
| https://github.com/JohnYezub/NewsFeed_SwiftUI_MVVM | Error 429 |
| https://github.com/Joker462/COVID-19_SwiftUI_Demo | Error 429 |
| https://github.com/JosephDuffy/Overamped | Error 429 |
| https://github.com/JuneDomingo/movieapp | Error 429 |
| https://github.com/JustinFincher/GitHubContributionsiOS | Error 429 |
| https://github.com/KMindeguia/movies | Error 429 |
| https://github.com/Kapeli/Dash-iOS | Error 429 |
| https://github.com/Karambirov/GitHubSearch | Error 429 |
| https://github.com/Keith-43/MuVis | Error 429 |
| https://github.com/KhaosT/open-apollo | Error 429 |
| https://github.com/KrauseFx/MajorKey | Error 429 |
| https://github.com/KrisYu/LivelyGIFs | Error 429 |
| https://github.com/LASER-Yi/SwiftUI-APOD | Error 429 |
| https://github.com/LIJI32/SameBoy | Error 429 |
| https://github.com/Lax/Learn-iOS-Swift-by-Examples | Error 429 |
| https://github.com/LemonPepperSeasoning/Hasher | Error 429 |
| https://github.com/Livinglist/Hacki | Error 429 |
| https://github.com/Livinglist/ZCombinator | Error 429 |
| https://github.com/LumingYin/PDFToKeynote-iOS | Error 429 |
| https://github.com/Lyndir/MasterPassword | Error 429 |
| https://github.com/MCJack123/craftos2 | Error 429 |
| https://github.com/MDSADABWASIM/Toughest | Error 429 |
| https://github.com/MSzalek-Mobile/weight_tracker | Error 429 |
| https://github.com/MaikCL/PKDex-iOS | Error 429 |
| https://github.com/MaisaMilena/MyAnimeList | Error 429 |
| https://github.com/MarcinusX/flutter_ui_challenge_flight_search | Error 429 |
| https://github.com/MartinStamenkovski/LibraryGenesis | Error 429 |
| https://github.com/MatthewWaller/MarkyMarkdown | Error 429 |
| https://github.com/MaximeHeckel/sunshine-weather-app | Error 429 |
| https://github.com/MengTo/DesignerNewsApp | Error 429 |
| https://github.com/MhdHejazi/CoronaTracker | Error 429 |
| https://github.com/MoZhouqi/VoiceMemos | Error 429 |
| https://github.com/MohGovIL/hamagen-react-native | Error 429 |
| https://github.com/MoralCode/MetricTime | Error 429 |
| https://github.com/MoralCode/MiamiSunglasses | Error 429 |
| https://github.com/MotionMobs/Sandwhich | Error 429 |
| https://github.com/MrAdamBoyd/DownTube | Error 429 |
| https://github.com/MrAdamBoyd/Pictograph | Error 429 |
| https://github.com/MrKai77/Binary-Clock-iOS | Error 429 |
| https://github.com/NathanFallet/MorpionTPE-iOS | Error 429 |
| https://github.com/NathanFallet/OCaml | Error 429 |
| https://github.com/NavdeepSinghh/RxSwift_MVVM_Finished | Error 429 |
| https://github.com/Neko3000/Iris.iOS | Error 429 |
| https://github.com/Neko3000/Monotone | Error 429 |
| https://github.com/Netfilter-Com/PopulationClock | Error 429 |
| https://github.com/NiftyTreeStudios/Bean-Juice | Error 429 |
| https://github.com/Norbert515/BookSearch | Error 429 |
| https://github.com/NozeIO/NeoIRC | Error 429 |
| https://github.com/OnionBrowser/OnionBrowser | Error 429 |
| https://github.com/OpenASL/Fingerspelling-iOS | Error 429 |
| https://github.com/OpenCovidTrace/octrace-ios | Error 429 |
| https://github.com/OpenStack-mobile/summit-app-ios | Error 429 |
| https://github.com/PangMo5/AniTime | Error 429 |
| https://github.com/PankajGaikar/Instagram-Clone-SwiftUI | Error 429 |
| https://github.com/Path-Check/safeplaces-dct-app | Error 429 |
| https://github.com/PaulaScholz/ApnsSample | Error 429 |
| https://github.com/Person2099/HTTPS-Responses | Error 429 |
| https://github.com/PiXeL16/SnakeClassic | Error 429 |
| https://github.com/Piecelet/neodb-app | Error 429 |
| https://github.com/Pondorasti/StonkScorer | Error 429 |
| https://github.com/ProteGO-Safe/ios | Error 429 |
| https://github.com/ProtonDriveApps/ios-drive | Error 429 |
| https://github.com/ProtonMail/ios-mail | Error 429 |
| https://github.com/ProtonVPN/ios-mac-app | Error 429 |
| https://github.com/Provenance-Emu/Provenance | Error 429 |
| https://github.com/Q-Mobile/Model2App | Error 429 |
| https://github.com/RF-Nelson/open-source-selfie-stick | Error 429 |
| https://github.com/RadarCOVID/radar-covid-ios | Error 429 |
| https://github.com/Ranchero-Software/NetNewsWire | Error 429 |
| https://github.com/RedBrogdon/flutterflip | Error 429 |
| https://github.com/ResearchKit/MyHeartCounts | Error 429 |
| https://github.com/RishabhTayal/Unofficial-iTC | Error 429 |
| https://github.com/RxSwiftCommunity/RxMarbles | Error 429 |
| https://github.com/Sage-Bionetworks/CardiorespiratoryFitness-iOS | Error 429 |
| https://github.com/SaiBalaji-PSS/Quote-Today | Error 429 |
| https://github.com/SaiBalaji-PSS/Scoop | Error 429 |
| https://github.com/Samaritan1011001/Trovami | Error 429 |
| https://github.com/Say-Their-Name/say-their-names-ios | Error 429 |
| https://github.com/SchwiftyUI/NewsApiApp | Error 429 |
| https://github.com/SeekingMini/MoneyPlus | Error 429 |
| https://github.com/Sendeky/weatherkit-weather-app | Error 429 |
| https://github.com/Shabang-Systems/Condution | Error 429 |
| https://github.com/SherlockQi/HeavenMemoirs | Error 429 |
| https://github.com/Sigil-Wen/Dream-with-Vision-Pro | Error 429 |
| https://github.com/Sigil-Wen/VisionCraft | Error 429 |
| https://github.com/Sophiestication/Articles | Error 429 |
| https://github.com/Sophiestication/Groceries | Error 429 |
| https://github.com/Sophiestication/Tipulator | Error 429 |
| https://github.com/SpongeBobSun/Prodigal-iOS | Error 429 |
| https://github.com/StephenMcMillan/Dub-Dub-Do | Error 429 |
| https://github.com/StepicOrg/stepik-ios | Error 429 |
| https://github.com/StewartLynch/Homescreen-Quick-Actions | Error 429 |
| https://github.com/StewartLynch/UbiquitousKeyValue-Storage | Error 429 |
| https://github.com/StewartLynch/iOS-14-Widget | Error 429 |
| https://github.com/Stmol/vkphotos | Error 429 |
| https://github.com/Stop-COVID-19-Croatia/stopcovid19-ios | Error 429 |
| https://github.com/SwiftyAlex/Samples | Error 429 |
| https://github.com/SwissCovid/swisscovid-app-ios | Error 429 |
| https://github.com/TCNCoalition/tcn-client-ios | Error 429 |
| https://github.com/THLfi/koronavilkku-ios | Error 429 |
| https://github.com/TICESoftware/tice-ios | Error 429 |
| https://github.com/TUM-Dev/Campus-iOS | Error 429 |
| https://github.com/TelegramMessenger/Telegram-iOS | Error 429 |
| https://github.com/TelemetryDeck/TelemetryViewer | Error 429 |
| https://github.com/ThasianX/DivRise | Error 429 |
| https://github.com/ThasianX/SpotifyRadar | Error 429 |
| https://github.com/TheCodeMonks/NYTimes-iOS | Error 429 |
| https://github.com/TheCodeTraveler/GitTrends | Error 429 |
| https://github.com/Thomvis/Construct | Error 429 |
| https://github.com/TortugaPower/BookPlayer | Error 429 |
| https://github.com/TrustWallet/trust-wallet-ios | Error 429 |
| https://github.com/TryFetch/Fetch | Error 429 |
| https://github.com/V8tr/InfiniteListSwiftUI | Error 429 |
| https://github.com/VAnsimov/MVI-SwiftUI | Error 429 |
| https://github.com/VamshiIITBHU14/FakeFBWall | Error 429 |
| https://github.com/VamshiIITBHU14/YouTubeClone | Error 429 |
| https://github.com/ViniciusDeep/Revill | Error 429 |
| https://github.com/VishwaiOSDev/Loadify-iOS | Error 429 |
| https://github.com/Visual-Studio-Coder/QR-Share-Pro | Error 429 |
| https://github.com/Visual-Studio-Coder/Recap | Error 429 |
| https://github.com/VladimirBrejcha/Rise | Error 429 |
| https://github.com/WWDCScholars/iOS-app | Error 429 |
| https://github.com/WelkinXie/FiveInARow | Error 429 |
| https://github.com/WezSieTato/ScanNow | Error 429 |
| https://github.com/Widle-Studio/Grocery-App | Error 429 |
| https://github.com/WireGuard/wireguard-apple | Error 429 |
| https://github.com/XKCDY/app | Error 429 |
| https://github.com/XunMengWinter/PetNote-oss | Error 429 |
| https://github.com/Yalantis/PixPic | Error 429 |
| https://github.com/YouXianMing/YoCelsius | Error 429 |
| https://github.com/YusuFKaan48/NeuCalc | Error 429 |
| https://github.com/YusuFKaan48/News | Error 429 |
| https://github.com/YusuFKaan48/PixelWeather | Error 429 |
| https://github.com/YusukeHosonuma/SwiftUI-LifeGame | Error 429 |
| https://github.com/aaronoe/FlutterCinematic | Error 429 |
| https://github.com/abdorizak/Expense-Tracker-App | Error 429 |
| https://github.com/adafruit/Basic-Chat | Error 429 |
| https://github.com/adamlyttleapps/OpenAI-Wrapper-SwiftUI | Error 429 |
| https://github.com/adamrushy/social-swiftui-app | Error 429 |
| https://github.com/adamwulf/loose-leaf | Error 429 |
| https://github.com/adblockplus/adblockplussafariios | Error 429 |
| https://github.com/admin-ch/CovidCertificate-App-iOS | Error 429 |
| https://github.com/aerlinn13/planc | Error 429 |
| https://github.com/aharren/CardDecks | Error 429 |
| https://github.com/aheze/OpenFind | Error 429 |
| https://github.com/aheze/ProgressGif | Error 429 |
| https://github.com/aheze/RealityKitLaunchScreen | Error 429 |
| https://github.com/aheze/SwiftUICraft | Error 429 |
| https://github.com/airbnb/HorizonCalendar | Error 429 |
| https://github.com/akarataev/gleam-ios | Error 429 |
| https://github.com/albertopeam/Podcasts | Error 429 |
| https://github.com/aleksanderwozniak/deer | Error 429 |
| https://github.com/alexissan/ReactNativeWorkshop | Error 429 |
| https://github.com/alexjlockwood/compose-multiplatform-2048 | Error 429 |
| https://github.com/alexliubj/SwiftUI-Currency-Converter | Error 429 |
| https://github.com/alexruperez/MADBike | Error 429 |
| https://github.com/alfianlosari/CoronaVirusTrackerFlutter | Error 429 |
| https://github.com/alfianlosari/CoronaVirusTrackerSwiftUI | Error 429 |
| https://github.com/alfianlosari/ImageFilterSwiftUICompleted | Error 429 |
| https://github.com/alfianlosari/KanbanDragDropiOS | Error 429 |
| https://github.com/alfianlosari/SwiftUI-MovieDB | Error 429 |
| https://github.com/alfianlosari/SwiftUIAuthenticationCompleted | Error 429 |
| https://github.com/alfianlosari/SwiftUICDExpenseTrackerCompleted | Error 429 |
| https://github.com/almormd/Learning | Error 429 |
| https://github.com/almormd/Splito | Error 429 |
| https://github.com/altstoreio/AltStore | Error 429 |
| https://github.com/amahi/ios | Error 429 |
| https://github.com/amake/orgro | Error 429 |
| https://github.com/amikhaylin/pompaddo | Error 429 |
| https://github.com/amitburst/HackerNews | Error 429 |
| https://github.com/analogcode/Swift-Radio-Pro | Error 429 |
| https://github.com/andrewcbancroft/BlogIdeaList-SwiftUI | Error 429 |
| https://github.com/anikaseibezeder/SwiftUISpeedrunChallenge | Error 429 |
| https://github.com/antranapp/IndieApps | Error 429 |
| https://github.com/antranapp/SwiftUIMindBlowing | Error 429 |
| https://github.com/appbrewery/BMI-Calculator-iOS13 | Error 429 |
| https://github.com/appbrewery/Flash-Chat-iOS13 | Error 429 |
| https://github.com/appbrewery/Xylophone-iOS13 | Error 429 |
| https://github.com/appcoda/TextScanner | Error 429 |
| https://github.com/apple/sample-backyard-birds | Error 429 |
| https://github.com/apple/sample-food-truck | Error 429 |
| https://github.com/apps-fab/exercism-app | Error 429 |
| https://github.com/aranja/rakning-c19-app | Error 429 |
| https://github.com/archagon/good-spirits | Error 429 |
| https://github.com/arnoappenzeller/PiPifier | Error 429 |
| https://github.com/artsy/eidolon | Error 429 |
| https://github.com/artsy/eigen | Error 429 |
| https://github.com/aslanyanhaik/Quick-Chat | Error 429 |
| https://github.com/aslanyanhaik/youtube-iOS | Error 429 |
| https://github.com/atrinh0/buttoncraft | Error 429 |
| https://github.com/atrinh0/covid19 | Error 429 |
| https://github.com/atrinh0/sfsymbols | Error 429 |
| https://github.com/atrinh0/spiro | Error 429 |
| https://github.com/audiokit/AudioKit | Error 429 |
| https://github.com/austinzheng/iOS-2048 | Error 429 |
| https://github.com/austinzheng/swift-2048 | Error 429 |
| https://github.com/austrianredcross/stopp-corona-ios | Error 429 |
| https://github.com/automat-berlin/afone/ | Error 429 |
| https://github.com/automattic/simplenote-ios | Error 429 |
| https://github.com/avdyushin/Velik | Error 429 |
| https://github.com/awaseem/foqos | Error 429 |
| https://github.com/awkward/beam | Error 429 |
| https://github.com/ayush221b/newsline | Error 429 |
| https://github.com/azamsharp/BudgetApp | Error 429 |
| https://github.com/bakkenbaeck/daylight-ios | Error 429 |
| https://github.com/barisozgenn/NetflixVisionPro | Error 429 |
| https://github.com/bartonhammond/snowflake | Error 429 |
| https://github.com/basarsubasi/simplefitnessapp | Error 429 |
| https://github.com/bastienFalcou/Portfolio | Error 429 |
| https://github.com/bcye/whathaveiread | Error 429 |
| https://github.com/belm/BaiduFM-Swift | Error 429 |
| https://github.com/below/CarSample | Error 429 |
| https://github.com/benoitvallon/react-native-nw-react-calculator | Error 429 |
| https://github.com/betzerra/Fecapp | Error 429 |
| https://github.com/bigjermaine/BetBudd | Error 429 |
| https://github.com/bimsina/notes-app | Error 429 |
| https://github.com/bimsina/wallpaper | Error 429 |
| https://github.com/birkir/kvikmyndr-app | Error 429 |
| https://github.com/bither/bither-ios | Error 429 |
| https://github.com/bitwarden/mobile | Error 429 |
| https://github.com/blinksh/blink | Error 429 |
| https://github.com/cds-snc/covid-alert-app | Archived |
| https://github.com/chadaustin/passdrop | Archived |
| https://github.com/cocoa-mhlw/cocoa | Archived |
| https://github.com/corona-warn-app/cwa-app-ios | Archived |
| https://github.com/covid19cz/erouska-ios | Archived |
| https://github.com/davedelong/MVCTodo | Archived |
| https://github.com/denissimon/Cryptocurrency-Info | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/denissimon/distributed-model-training | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/denissimon/iOS-MVVM-Clean-Architecture | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/denoni/SpotifyClone | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/devxoul/RxTodo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/devxoul/SwiftUITodo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/diogot/MyWeight | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/TabDump | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/covid19.swift | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/fastmdb | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/how-much | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/listapp.ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/news | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/osia | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/stocks | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/upcomingtv | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dl-alexandre/SymbolGrid | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/donbytyqi/PapersSwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dopebase/messenger-iOS-chat-swift-firestore | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/draese/TwitterSentiment | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dropbox/PhotoWatch | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/drpeterrohde/MoodSnap | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/duckduckgo/apple-browsers | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/e-mission/e-mission-phone | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ecrichlow/LootRaideriOS_OS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/efremidze/Alarm | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/eleev/compositional-layouts-kit | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/eleev/flappy-fly-bird | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/eleev/swiftui-2048 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/eleev/tic-tac-toe | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/element-hq/element-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/element-hq/element-x-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/elkiwy/KHabit | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/emcro/SwiftUI-Keyboard-Demo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/emoncms/emoncms-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/emredurukn/betcalsa | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/emufreak/iAmiga | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/enochng1/RaceMe | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/eonist/summon | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ericjohnson/canabalt-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ericlewis/DeltaUI | Error 429 |
| https://github.com/ericlewis/ShoppingList | Error 429 |
| https://github.com/essentiaone/Essentia-iOS | Error 429 |
| https://github.com/ethanhuang13/blahker | Error 429 |
| https://github.com/ethanhuang13/knil | Error 429 |
| https://github.com/ethanhuang13/ladybug | Error 429 |
| https://github.com/ethanswift/DiscussIt | Error 429 |
| https://github.com/ethanswift/NewsAnalyzer | Error 429 |
| https://github.com/eugenebokhan/Awesome-ML | Error 429 |
| https://github.com/exantech/exa-wallet-ios | Error 429 |
| https://github.com/expo/expo | Error 429 |
| https://github.com/ezefranca/watchpresenter | Error 429 |
| https://github.com/fabiensanglard/Shmup | Error 429 |
| https://github.com/fabienwarniez/Vie | Error 429 |
| https://github.com/fabio914/BeatmapVisionPro | Error 429 |
| https://github.com/fangwei716/30-days-of-react-native | Error 429 |
| https://github.com/fatih-gursoy/Cuisiner | Error 429 |
| https://github.com/fatih-gursoy/Projector | Error 429 |
| https://github.com/filipealva/Cepp | Error 429 |
| https://github.com/fimuxd/BringMyOwnBeer- | Error 429 |
| https://github.com/fimuxd/BringMyOwnBeer-Combine | Error 429 |
| https://github.com/fimuxd/GITGET | Error 429 |
| https://github.com/firebase/friendlyeats-ios | Error 429 |
| https://github.com/firebase/quickstart-ios | Error 429 |
| https://github.com/flappy-royale/flappy-royale | Error 429 |
| https://github.com/fossasia/open-event-attendee-ios | Error 429 |
| https://github.com/fossasia/open-event-organizer-ios | Error 429 |
| https://github.com/fossasia/susi_iOS | Error 429 |
| https://github.com/freeotp/freeotp-ios | Error 429 |
| https://github.com/freesuraj/TLDR | Error 429 |
| https://github.com/frogatto/frogatto | Error 429 |
| https://github.com/fromkk/FreeTimePicker | Error 429 |
| https://github.com/fromkk/iOSDCRC | Error 429 |
| https://github.com/frostland/GPS-Stone | Error 429 |
| https://github.com/fulldecent/8-ball-answer | Error 429 |
| https://github.com/fulldecent/formant-analyzer | Error 429 |
| https://github.com/fulldecent/pizzaman | Error 429 |
| https://github.com/gabrieloc/GIOVANNI | Error 429 |
| https://github.com/gao0122/ARKit-Example-by-Apple | Error 429 |
| https://github.com/gdombiak/OctoPod | Error 429 |
| https://github.com/gematik/E-Rezept-App-iOS | Error 429 |
| https://github.com/genadyo/WWDC | Error 429 |
| https://github.com/ghewgill/puzzles | Error 429 |
| https://github.com/git-up/GitUp | Error 429 |
| https://github.com/gitpoint/git-point | Error 429 |
| https://github.com/glushchenko/fsnotes | Error 429 |
| https://github.com/gonchar/VisionProVacuumDemo | Error 429 |
| https://github.com/google/mechahamster | Error 429 |
| https://github.com/googlecast/CastVideos-ios | Error 429 |
| https://github.com/groue/GRDBCombine | Error 429 |
| https://github.com/gtokman/Restaurant-Viewing-App | Error 429 |
| https://github.com/hackfoldr/hackfoldr-iOS | Error 429 |
| https://github.com/hadobedo/FunkiniOS | Error 429 |
| https://github.com/haiwen/seafile-iOS | Error 429 |
| https://github.com/hamed8080/LeitnerBox | Error 429 |
| https://github.com/hanton/Fisheye | Error 429 |
| https://github.com/haolloyin/MrCode | Error 429 |
| https://github.com/hbmartin/Directory-SwiftUI | Error 429 |
| https://github.com/heart/CarBode-Barcode-Scanner-For-SwiftUI | Error 429 |
| https://github.com/herzbube/littlego | Error 429 |
| https://github.com/heyrahulrs/ASETimerSwiftUI | Error 429 |
| https://github.com/hilen/TSWeChat | Error 429 |
| https://github.com/hishd/RicketyRick-iOS | Error 429 |
| https://github.com/hishd/SkyWizard-SwiftUI | Error 429 |
| https://github.com/holzschu/a-shell | Error 429 |
| https://github.com/home-assistant/iOS | Error 429 |
| https://github.com/horizontalsystems/unstoppable-wallet-ios | Error 429 |
| https://github.com/hrydgard/ppsspp | Error 429 |
| https://github.com/huggingface/swift-coreml-transformers | Error 429 |
| https://github.com/hungps/flutter_pokedex | Error 429 |
| https://github.com/hyperoslo/BarcodeScanner | Error 429 |
| https://github.com/iAlexander/Homepok | Error 429 |
| https://github.com/iAugux/Phonetic | Error 429 |
| https://github.com/iCHAIT/awesome-macOS | Error 429 |
| https://github.com/iCepa/iCepa | Error 429 |
| https://github.com/iKenndac/Tofu | Error 429 |
| https://github.com/ibhavikmakwana/Fluttery-Filmy | Error 429 |
| https://github.com/id-Software/DOOM-IOS2 | Error 429 |
| https://github.com/id-Software/DOOM-iOS | Error 429 |
| https://github.com/id-Software/Wolf3D-iOS | Error 429 |
| https://github.com/ifrotz/iosfrotz | Error 429 |
| https://github.com/igorkulman/iOSSampleApp | Error 429 |
| https://github.com/igravitystudios/matchimals.fun | Error 429 |
| https://github.com/ijoshsmith/swift-ascii-art | Error 429 |
| https://github.com/il1ane/StoicQuotes | Error 429 |
| https://github.com/illu/moonwalk | Error 429 |
| https://github.com/immich-app/immich | Error 429 |
| https://github.com/immuni-app/immuni-app-ios | Error 429 |
| https://github.com/inamiy/Harvest-SwiftUI-Gallery | Error 429 |
| https://github.com/incipher/einmal | Error 429 |
| https://github.com/infinitepower18/Homepage-MobileSafari | Error 429 |
| https://github.com/insidegui/AnimojiStudio | Error 429 |
| https://github.com/insurgentgames/Skeleton-Key-iOS | Error 429 |
| https://github.com/invoiceninja/admin-portal | Error 429 |
| https://github.com/irace/BlogQuest | Error 429 |
| https://github.com/irccloud/ios | Error 429 |
| https://github.com/ish-app/ish | Error 429 |
| https://github.com/istornz/iPokeGo | Error 429 |
| https://github.com/itsliamdowd/Project-Democracy | Error 429 |
| https://github.com/ivan-magda/Californication | Error 429 |
| https://github.com/ivan-magda/Tagger | Error 429 |
| https://github.com/ivan-magda/UpcomingMovies | Error 429 |
| https://github.com/ivan-magda/ios-demo | Error 429 |
| https://github.com/ivanvorobei/SwiftUI | Error 429 |
| https://github.com/ivirtex/networkarch-old | Error 429 |
| https://github.com/ivpn/ios-app | Error 429 |
| https://github.com/jaredwolff/swift-bluetooth-particle-rgb | Error 429 |
| https://github.com/jareksedy/Elseweather | Error 429 |
| https://github.com/jasudev/FabulaItemsProvider | Error 429 |
| https://github.com/jazzychad/iCloudCoreDataStarter | Error 429 |
| https://github.com/jbarr21/flews | Error 429 |
| https://github.com/jbkuczma/NBAreact | Error 429 |
| https://github.com/jdisho/Papr | Error 429 |
| https://github.com/jeffreybergier/Hipstapaper | Error 429 |
| https://github.com/jegnux/SwiftUICameraAppSpeedrunChallenge | Error 429 |
| https://github.com/jellyfin/Swiftfin | Error 429 |
| https://github.com/jerald-jacob/Flutter-Apps | Error 429 |
| https://github.com/jeroensmeets/11t | Error 429 |
| https://github.com/jesusrp98/spacex-go | Error 429 |
| https://github.com/jhatin94/tempatlas-swiftui | Error 429 |
| https://github.com/jitsi/jitsi-meet | Error 429 |
| https://github.com/joeldavidw/Chronos | Error 429 |
| https://github.com/joforsell/Cocktails | Error 429 |
| https://github.com/jogboms/tailor_made | Error 429 |
| https://github.com/jogendra/gravityBlocks | Error 429 |
| https://github.com/jogendra/phimpme-iOS | Error 429 |
| https://github.com/jogendra/technex-ios | Error 429 |
| https://github.com/johnmahlon/Coffee-Ratio | Error 429 |
| https://github.com/jonaspoxleitner/minimalistic_push | Error 429 |
| https://github.com/jonluca/PasteBinApp | Error 429 |
| https://github.com/jordansinger/SwiftUI-Kit | Error 429 |
| https://github.com/jordansinger/lil-news-app | Error 429 |
| https://github.com/jordansinger/lil-wallet | Error 429 |
| https://github.com/jordibruin/Dynamic-Islands | Error 429 |
| https://github.com/jordibruin/Swift-Charts-Examples | Error 429 |
| https://github.com/joreilly/BikeShare | Error 429 |
| https://github.com/joreilly/PeopleInSpace | Error 429 |
| https://github.com/joreilly/StarWars | Error 429 |
| https://github.com/joreilly/WordMasterKMP | Error 429 |
| https://github.com/jpsim/CardsAgainst | Error 429 |
| https://github.com/jpsim/DeckRocket | Error 429 |
| https://github.com/jpsim/Milestones | Error 429 |
| https://github.com/jpsim/ZenTuner | Error 429 |
| https://github.com/jsphkhan/ReactNativeExamples | Error 429 |
| https://github.com/jtbandes/SpacePOD | Error 429 |
| https://github.com/jtrivedi/Apple-Cash-Animation | Error 429 |
| https://github.com/jtrivedi/Mesh-Transform-Animation | Error 429 |
| https://github.com/jtsaeed/Hour-Blocks | Error 429 |
| https://github.com/julianschiavo/Playerly | Error 429 |
| https://github.com/k-lpmg/GiTiny | Error 429 |
| https://github.com/kahopoon/QR-Blank | Error 429 |
| https://github.com/kalismeras61/flutter_wallet_ui | Error 429 |
| https://github.com/kartaview/ios | Error 429 |
| https://github.com/keepassium/KeePassium | Error 429 |
| https://github.com/kevinyou77/Swordfish | Error 429 |
| https://github.com/kevmoo/slide_puzzle | Error 429 |
| https://github.com/keybase/client | Error 429 |
| https://github.com/kgellci/Area51 | Error 429 |
| https://github.com/khoren93/SwiftHub | Error 429 |
| https://github.com/khuong291/Flutter-Movie | Error 429 |
| https://github.com/kickstarter/ios-oss | Error 429 |
| https://github.com/kiliankoe/ParkenDD | Error 429 |
| https://github.com/kitasuke/SwiftUI-Flux | Error 429 |
| https://github.com/kitasuke/SwiftUI-MVVM | Error 429 |
| https://github.com/kiwix/kiwix-apple | Error 429 |
| https://github.com/kjwamlex/SpatialDock | Error 429 |
| https://github.com/kodecocodes/RWDevCon-App | Error 429 |
| https://github.com/kodecocodes/swiftui-example-app-koober | Error 429 |
| https://github.com/kolplattformen/skolplattformen | Error 429 |
| https://github.com/krishkumar/BlockParty | Error 429 |
| https://github.com/kryptco/krypton-ios | Error 429 |
| https://github.com/kserko/CineReel | Error 429 |
| https://github.com/kudoleh/iOS-Clean-Architecture-MVVM | Error 429 |
| https://github.com/kudoleh/iOS-Modular-Architecture | Error 429 |
| https://github.com/kuglee/TermiWatch | Error 429 |
| https://github.com/kurozora/kurozora-app | Error 429 |
| https://github.com/kwonye/calcupad | Error 429 |
| https://github.com/kxvn-lx/Ghibliii | Error 429 |
| https://github.com/kxvn-lx/Kontax-Cam | Error 429 |
| https://github.com/kyledold/WordOfTheDay | Error 429 |
| https://github.com/laevandus/OnDemandAPIKeyExample | Error 429 |
| https://github.com/latifatcii/DailyNews | Error 429 |
| https://github.com/laurent22/joplin | Error 429 |
| https://github.com/lazerwalker/cortado | Error 429 |
| https://github.com/ldakhoa/GistHub | Error 429 |
| https://github.com/leathalman/Jotify | Error 429 |
| https://github.com/leavenstee/InstaFake-Swift-UI | Error 429 |
| https://github.com/libretro/RetroArch | Error 429 |
| https://github.com/linagora/Twake-Mobile | Error 429 |
| https://github.com/lionheart/Pushpin | Error 429 |
| https://github.com/litchie/dospad | Error 429 |
| https://github.com/localsend/localsend | Error 429 |
| https://github.com/logseq/logseq | Error 429 |
| https://github.com/londonappbrewery/bmi-calculator-flutter | Error 429 |
| https://github.com/louisdh/savanna | Error 429 |
| https://github.com/ltebean/Live | Error 429 |
| https://github.com/lucaslimapoa/NewsAPISwift | Error 429 |
| https://github.com/lurado/MovieDict | Error 429 |
| https://github.com/mainframecomputer/fullmoon-ios | Error 429 |
| https://github.com/mamaral/xkcd-Open-Source | Error 429 |
| https://github.com/manolosavi/xFonts | Error 429 |
| https://github.com/mapsme/omim | Error 429 |
| https://github.com/marlon360/grade-calc | Error 429 |
| https://github.com/marty-suzuki/ArtShredder | Error 429 |
| https://github.com/marty-suzuki/GitHubSearchWithSwiftUI | Error 429 |
| https://github.com/marty-suzuki/iOSDesignPatternSamples | Error 429 |
| https://github.com/mastodon/mastodon-ios | Error 429 |
| https://github.com/mateusz-bak/openreads | Error 429 |
| https://github.com/mathieudutour/TimeLines | Error 429 |
| https://github.com/matiasvillaverde/mobile-ios-vipergame | Error 429 |
| https://github.com/matomo-org/matomo-mobile-2 | Error 429 |
| https://github.com/mattermost/mattermost-mobile | Error 429 |
| https://github.com/mattlawer/FaceLandmarksDetection | Error 429 |
| https://github.com/mattrubin/authenticator | Error 429 |
| https://github.com/maxhumber/BreadBuddy | Error 429 |
| https://github.com/mbcrump/TasksForSwiftWithPersistingData | Error 429 |
| https://github.com/mdanics/fluttergram | Error 429 |
| https://github.com/mecid/swiftui-recipes-app | Error 429 |
| https://github.com/meggsila/EmployeeCheckin | Error 429 |
| https://github.com/mehrankmlf/EasyCrypto | Error 429 |
| https://github.com/metabolist/metatext | Error 429 |
| https://github.com/metal-by-example/learn-metal-cpp-ios | Error 429 |
| https://github.com/metal-by-example/metal-spatial-dynamic-mesh | Error 429 |
| https://github.com/meteochu/Blurry | Error 429 |
| https://github.com/miataru/miataru-ios-client | Error 429 |
| https://github.com/microdotblog/microblog-ios | Error 429 |
| https://github.com/migueldeicaza/SwiftTerm | Error 429 |
| https://github.com/migueldeicaza/SwiftTermApp | Error 429 |
| https://github.com/mikaelacaron/Basic-Car-Maintenance | Error 429 |
| https://github.com/mikelikesdesign/SwiftUI-experiments | Error 429 |
| https://github.com/minvws/nl-covid19-notification-app-ios | Error 429 |
| https://github.com/misteu/VocabularyTraining | Error 429 |
| https://github.com/mitchtabian/Food2Fork-KMM | Error 429 |
| https://github.com/mkhrapov/sansumoku | Error 429 |
| https://github.com/mkhrapov/ultimate-peg-solitaire | Error 429 |
| https://github.com/ml-explore/mlx-swift-examples | Error 429 |
| https://github.com/molcik/swiftui-elements | Error 429 |
| https://github.com/monal-im/Monal | Error 429 |
| https://github.com/mongodb-developer/BlackJackTrainer | Error 429 |
| https://github.com/moonlight-stream/moonlight-ios | Error 429 |
| https://github.com/movingparts-io/Pow-Examples | Error 429 |
| https://github.com/mozilla-mobile/firefox-ios | Error 429 |
| https://github.com/mperovic/my41 | Error 429 |
| https://github.com/mrdepth/Neocom | Error 429 |
| https://github.com/msal4/royal_news | Error 429 |
| https://github.com/msasikanth/twine | Error 429 |
| https://github.com/mshll/Color-Way | Error 429 |
| https://github.com/mssun/passforios | Error 429 |
| https://github.com/mullvad/mullvadvpn-app | Error 429 |
| https://github.com/mumble-voip/mumble-iphoneos | Error 429 |
| https://github.com/mythxn/DesignCode-SwiftUI | Error 429 |
| https://github.com/nalexn/clean-architecture-swiftui | Error 429 |
| https://github.com/naoyashiga/Dunk | Error 429 |
| https://github.com/nate-parrott/tortellini | Error 429 |
| https://github.com/nate-parrott/uhohlingo | Error 429 |
| https://github.com/nate-parrott/web98 | Error 429 |
| https://github.com/nathanborror/logger | Error 429 |
| https://github.com/nathanmsmith/MirrorPlusPlus | Error 429 |
| https://github.com/ndfred/iperf-ios | Error 429 |
| https://github.com/nebs/hello-bluetooth | Error 429 |
| https://github.com/nemecek-filip/CompositionalDiffablePlayground.ios | Error 429 |
| https://github.com/neodroid/Parallax-Card-SwiftUI | Error 429 |
| https://github.com/nerdsupremacist/CovidUI | Error 429 |
| https://github.com/netguru/baby-monitor-client-ios | Error 429 |
| https://github.com/netless-io/flat-ios | Error 429 |
| https://github.com/newlinedotco/FlappySwift | Error 429 |
| https://github.com/nextcloud/ios | Error 429 |
| https://github.com/nextcloud/talk-ios | Error 429 |
| https://github.com/ngs/ci2go | Error 429 |
| https://github.com/niazoff/Chat | Error 429 |
| https://github.com/niazoff/Weather | Error 429 |
| https://github.com/nicklockwood/Chess | Error 429 |
| https://github.com/nicklockwood/Swiftenstein | Error 429 |
| https://github.com/nicklockwood/Swune | Error 429 |
| https://github.com/niftycode/ZeitSuche_iOS | Error 429 |
| https://github.com/nightscout/nightguard | Error 429 |
| https://github.com/nikitamounier/tapit-app | Error 429 |
| https://github.com/niochat/nio | Error 429 |
| https://github.com/noodlewerk/NWPusher | Error 429 |
| https://github.com/novinfard/SmartWallet | Error 429 |
| https://github.com/novinfard/TranscriptionHelper | Error 429 |
| https://github.com/nploi/corona_tracker | Error 429 |
| https://github.com/nsoojin/BookStore-iOS | Error 429 |
| https://github.com/ntnhon/Random-SwiftUI | Error 429 |
| https://github.com/objcio/app-architecture | Error 429 |
| https://github.com/oblador/hush | Error 429 |
| https://github.com/ogoguel/activegs-ios | Error 429 |
| https://github.com/oleksii-demedetskyi/SwiftUI-UDF-Demo | Error 429 |
| https://github.com/olucurious/awesome-arkit | Error 429 |
| https://github.com/onionshare/onionshare | Error 429 |
| https://github.com/onl1ner/BarcodeScanner | Error 429 |
| https://github.com/onmyway133/Recipes | Error 429 |
| https://github.com/ooni/probe-ios | Error 429 |
| https://github.com/open-trackers/Gym-Routine-Tracker-Watch-App | Error 429 |
| https://github.com/openfoodfacts/openfoodfacts-ios | Error 429 |
| https://github.com/openhab/openhab-ios | Error 429 |
| https://github.com/openopus-org/concertmaster_ios | Error 429 |
| https://github.com/openshopio/openshop.io-ios | Error 429 |
| https://github.com/orta/Relay-Artist-Example | Error 429 |
| https://github.com/osmandapp/Osmand | Error 429 |
| https://github.com/owncloud/ios-app | Error 429 |
| https://github.com/owntracks/ios | Error 429 |
| https://github.com/padloc/padloc | Error 429 |
| https://github.com/passepartoutvpn/passepartout | Error 429 |
| https://github.com/paulrehkugler/xkcd | Error 429 |
| https://github.com/paulsumit1993/DailyFeed | Error 429 |
| https://github.com/pcqpcq/open-source-android-apps | Error 429 |
| https://github.com/pedrommcarrasco/ARbusters | Error 429 |
| https://github.com/peterfriese/MakeItSo | Error 429 |
| https://github.com/peterfriese/SwiftUI-Concurrency-Essentials | Error 429 |
| https://github.com/philipcdavis/VariableType | Error 429 |
| https://github.com/philipturner/ar-multipendulum | Error 429 |
| https://github.com/phillfarrugia/appstore-clone | Error 429 |
| https://github.com/phpmaple/Stick-Hero-Swift | Error 429 |
| https://github.com/pia-foss/mobile-ios | Error 429 |
| https://github.com/pietrocaselani/CouchTracker | Error 429 |
| https://github.com/pitt500/OnlineStoreTCA | Error 429 |
| https://github.com/pixelfed/pixelfed-rn | Error 429 |
| https://github.com/podverse/podverse-rn | Error 429 |
| https://github.com/pointfreeco/isowords | Error 429 |
| https://github.com/pointspy/shlist | Error 429 |
| https://github.com/polydice/iCook-tvOS | Error 429 |
| https://github.com/popshootjapan/WeiWallet-iOS | Error 429 |
| https://github.com/ppy/osu | Error 429 |
| https://github.com/prey/prey-ios-client | Error 429 |
| https://github.com/prof18/feed-flow | Error 429 |
| https://github.com/project-violet/violet | Error 429 |
| https://github.com/ptsochantaris/trailer | Error 429 |
| https://github.com/ra1028/SwiftUI-Combine | Error 429 |
| https://github.com/raaxis/nds4ios | Error 429 |
| https://github.com/rainbow-me/rainbow | Error 429 |
| https://github.com/rajdeep/proton | Error 429 |
| https://github.com/rambler-digital-solutions/rambler-it-ios | Error 429 |
| https://github.com/rarfell/dimeApp | Error 429 |
| https://github.com/rayliverified/FlutterGames | Error 429 |
| https://github.com/razeware/emitron-iOS | Error 429 |
| https://github.com/rcaos/TVToday | Error 429 |
| https://github.com/relatedcode/Messenger | Error 429 |
| https://github.com/remirobert/Github-contributions | Error 429 |
| https://github.com/renaudjenny/telltime | Error 429 |
| https://github.com/richardtop/CalendarApp | Error 429 |
| https://github.com/riley-usagi/SwiftAdvance | Error 429 |
| https://github.com/rileytestut/Clip | Error 429 |
| https://github.com/rileytestut/Delta | Error 429 |
| https://github.com/ritwiktakkar/WordDefiner | Error 429 |
| https://github.com/ritwiktakkar/shorten_my_URL | Error 429 |
| https://github.com/rnystrom/HackerNewsReader | Error 429 |
| https://github.com/rnystrom/SimpleWeather | Error 429 |
| https://github.com/rob-miller/rTracker | Error 429 |
| https://github.com/robertwtucker/kfinderapp-ios | Error 429 |
| https://github.com/rocketshipapps/adblockfast | Error 429 |
| https://github.com/rodydavis/gmail_clone | Error 429 |
| https://github.com/roughike/inKino | Error 429 |
| https://github.com/roymckenzie/Go-Flashcards | Error 429 |
| https://github.com/rrroyal/Harbour | Error 429 |
| https://github.com/rursache/ToDoList | Error 429 |
| https://github.com/rwema3/FindSeat-App | Error 429 |
| https://github.com/rwema3/Math-Matrix-App | Error 429 |
| https://github.com/rwema3/Space_Empires | Error 429 |
| https://github.com/ryanlintott/DefibHeart | Error 429 |
| https://github.com/ryanlintott/OvercastDrawer | Error 429 |
| https://github.com/s-s/dnscloak | Error 429 |
| https://github.com/saber-notes/saber | Error 429 |
| https://github.com/satya164/PocketGear | Error 429 |
| https://github.com/saulamsal/netflix-ui | Error 429 |
| https://github.com/saxobroko/SaxWeather | Error 429 |
| https://github.com/sbertix/Swiftagram | Error 429 |
| https://github.com/scalefocus/virusafe-ios | Error 429 |
| https://github.com/scotteg/LayerPlayer | Error 429 |
| https://github.com/scribblemaniac/Fibonacc-iClock | Error 429 |
| https://github.com/scribe-org/Scribe-iOS | Error 429 |
| https://github.com/sebjvidal/Apple-Music-UI-Demo | Error 429 |
| https://github.com/sebjvidal/UICollectionView-Collapsible-Section-Demo | Error 429 |
| https://github.com/securityfirst/Umbrella_ios | Error 429 |
| https://github.com/sephine/lumio | Error 429 |
| https://github.com/sgl0v/WWDCast | Error 429 |
| https://github.com/sgr-ksmt/FireTodo | Error 429 |
| https://github.com/shagedorn/StateRestorationDemo | Error 429 |
| https://github.com/shameemreza/critterclan | Error 429 |
| https://github.com/shankarmadeshvaran/SwiftUI_Tasks | Error 429 |
| https://github.com/shankqr/4xMobileGame | Error 429 |
| https://github.com/shu223/iOS-Depth-Sampler | Error 429 |
| https://github.com/signalapp/Signal-iOS | Error 429 |
| https://github.com/simonbengtsson/airdash | Error 429 |
| https://github.com/simonbs/SBSAnimoji | Error 429 |
| https://github.com/simonoppowa/OpenNutriTracker | Error 429 |
| https://github.com/simple-login/Simple-Login-iOS | Error 429 |
| https://github.com/simpledotorg/bp-passport | Error 429 |
| https://github.com/sindresorhus/blear | Error 429 |
| https://github.com/singro/v2ex | Error 429 |
| https://github.com/smalam119/live-news-viper | Error 429 |
| https://github.com/snowhaze/SnowHaze-iOS | Error 429 |
| https://github.com/soapyigu/Swift-30-Projects | Error 429 |
| https://github.com/sobri909/ArcMini | Error 429 |
| https://github.com/soffes/bar | Error 429 |
| https://github.com/softdevstory/OhMyPlane | Error 429 |
| https://github.com/sonsongithub/reddift | Error 429 |
| https://github.com/soramitsu/fearless-iOS | Error 429 |
| https://github.com/soroushchehresa/iran-coronavirus | Error 429 |
| https://github.com/splinesoft/MUDRammer | Error 429 |
| https://github.com/sprang/Inkpad | Error 429 |
| https://github.com/standardnotes/mobile | Error 429 |
| https://github.com/status-im/status-mobile | Error 429 |
| https://github.com/stevenselcuk/Pomosh-iOS-watchOS | Error 429 |
| https://github.com/steventroughtonsmith/MobileTerminal | Error 429 |
| https://github.com/steventroughtonsmith/SpriteKitWatchFace | Error 429 |
| https://github.com/steventroughtonsmith/files-ios | Error 429 |
| https://github.com/streetwriters/notesnook | Error 429 |
| https://github.com/strongbox-password-safe/Strongbox | Error 429 |
| https://github.com/suicidesafetyplan/safetyplan-ios | Error 429 |
| https://github.com/superarcswift/SwiftCommunity | Error 429 |
| https://github.com/surfstudio/StackOv | Error 429 |
| https://github.com/tapmoko/typestyle | Error 429 |
| https://github.com/terrychou/iVim | Error 429 |
| https://github.com/theankurkedia/NewsBuzz | Error 429 |
| https://github.com/theindianappguy/FlutterNewsApp | Error 429 |
| https://github.com/themoji/ios | Error 429 |
| https://github.com/thestoneage/IDResistors | Error 429 |
| https://github.com/thiagolioy/marvelapp | Error 429 |
| https://github.com/thiagoricieri/Mojilist | Error 429 |
| https://github.com/thomasfinch/GammaThingy | Error 429 |
| https://github.com/thomasokken/free42 | Error 429 |
| https://github.com/thomaspaulmann/HeartControl | Error 429 |
| https://github.com/thoughtbot/Tropos | Error 429 |
| https://github.com/threema-ch/threema-ios | Error 429 |
| https://github.com/tiagomartinho/Reminders | Error 429 |
| https://github.com/timfraedrich/OutRun | Error 429 |
| https://github.com/tinode/ios | Error 429 |
| https://github.com/tirupati17/contacts-mvp-swift | Error 429 |
| https://github.com/tirupati17/currency-converter-swift3.0-viper | Error 429 |
| https://github.com/tirupati17/giphy-mvvm-swift | Error 429 |
| https://github.com/tirupati17/sip-calculator-swift | Error 429 |
| https://github.com/tls-inspector/tls-inspector | Error 429 |
| https://github.com/tnantoka/edhita | Error 429 |
| https://github.com/tommyxchow/frosty | Error 429 |
| https://github.com/touchlab/DroidconKotlin | Error 429 |
| https://github.com/tpgoffline/tpg-offline-iOS | Error 429 |
| https://github.com/traccar/traccar-client-ios | Error 429 |
| https://github.com/traccar/traccar-manager-ios | Error 429 |
| https://github.com/trentpiercy/trace | Error 429 |
| https://github.com/triangledraw/TriangleDraw-iOS | Error 429 |
| https://github.com/tryswift/trySwiftAppFinal | Error 429 |
| https://github.com/tryswift/trySwiftNYC | Error 429 |
| https://github.com/tt1k/FakeGithub | Error 429 |
| https://github.com/tt1k/money-mate | Error 429 |
| https://github.com/tutao/tutanota | Error 429 |
| https://github.com/twocentstudios/vinylogue | Error 429 |
| https://github.com/twostraws/Unwrap | Error 429 |
| https://github.com/twostraws/simple-swiftui | Error 429 |
| https://github.com/twtstudio/WePeiYang-iOS-Everest | Error 429 |
| https://github.com/txaiwieser/FityIt | Error 429 |
| https://github.com/uiheros/react-native-redux-todo-list | Error 429 |
| https://github.com/ukhsa-collaboration/covid-19-app-ios-ag-public | Error 429 |
| https://github.com/ulritter/FrozenPengu | Error 429 |
| https://github.com/unixzii/SwiftUI-2048 | Error 429 |
| https://github.com/utmapp/UTM | Error 429 |
| https://github.com/vadymmarkov/reviewery-mobile | Error 429 |
| https://github.com/vapor-community/chat-ios-example | Error 429 |
| https://github.com/venkatasg/DeTeXt | Error 429 |
| https://github.com/vermont42/Conjugar | Error 429 |
| https://github.com/vermont42/RaceRunner | Error 429 |
| https://github.com/victorpanitz/iOS-SortingAlgorithmsApp | Error 429 |
| https://github.com/videolan/vlc | Error 429 |
| https://github.com/vijaywargiya/Translate-SwiftUI | Error 429 |
| https://github.com/vincode-io/Humboldt | Error 429 |
| https://github.com/vincode-io/Zavala | Error 429 |
| https://github.com/vinhnx/Clendar | Error 429 |
| https://github.com/wallabag/ios-app | Error 429 |
| https://github.com/weiran/Hackers | Error 429 |
| https://github.com/wikimedia/wikipedia-ios | Error 429 |
| https://github.com/willhains/Kotoba | Error 429 |
| https://github.com/willowtreeapps/vocable-ios | Error 429 |
| https://github.com/wireapp/wire-ios | Error 429 |
| https://github.com/woocommerce/woocommerce-ios | Error 429 |
| https://github.com/wordpress-mobile/WordPress-iOS | Error 429 |
| https://github.com/woxtu/SwiftUI-HackerNews | Error 429 |
| https://github.com/wvabrinskas/PokePal | Error 429 |
| https://github.com/wwayne/react-native-nba-app | Error 429 |
| https://github.com/wwdc-family/app | Error 429 |
| https://github.com/xYello/ThePost | Error 429 |
| https://github.com/xbmc/xbmc | Error 429 |
| https://github.com/xcoo/upupu | Error 429 |
| https://github.com/xpavle00/Habo | Error 429 |
| https://github.com/yattee/yattee | Error 429 |
| https://github.com/yichengchen/ATV-Bilibili-demo | Error 429 |
| https://github.com/ynagatomo/ARDiffMuseum | Error 429 |
| https://github.com/ynagatomo/ARWallPicture | Error 429 |
| https://github.com/ynagatomo/ImgGenSD2 | Error 429 |
| https://github.com/yohannes/Thoughtless | Error 429 |
| https://github.com/yoshisuga/MAME4iOS | Error 429 |
| https://github.com/youstanzr/YouTag | Error 429 |
| https://github.com/yuripetrosyan/Controllers | Error 429 |
| https://github.com/zackshapiro/SwiftUIAirtableDemo | Error 429 |
| https://github.com/zehfernandes/wordnote | Error 429 |
| https://github.com/zulip/zulip-mobile | Error 429 |
| https://github.com/zydeco/minivmac4ios | Error 429 |
| https://github.com/zzanehip/The-OldOS-Project | Error 429 |

*Last updated: 2025-05-22 09:15:48 UTC*