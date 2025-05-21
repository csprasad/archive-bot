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
| https://github.com/kurozora/kurozora-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ish-app/ish | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Provenance-Emu/Provenance | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/belm/BaiduFM-Swift | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/bither/bither-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/JohnWong/bus-today | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/lazerwalker/cortado | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/coolioxlr/watchOS-2-heartrate | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/G2Jose/ReactNative-HackerNews | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/SwiftHN | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/SaiBalaji-PSS/Scoop | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/VishwaiOSDev/Loadify-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/genadyo/WWDC | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dropbox/PhotoWatch | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/D-32/WatchPics | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mozilla-mobile/firefox-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/chrisballinger/BLEMeshChat | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/aslanyanhaik/Quick-Chat | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ChatSecure/ChatSecure-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/colloquy/colloquy | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/irccloud/ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mumble-voip/mumble-iphoneos | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/signalapp/Signal-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/TelegramMessenger/Telegram-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kodecocodes/RWDevCon-App | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rocketshipapps/adblockfast | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/adblockplus/adblockplussafariios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/krishkumar/BlockParty | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ngs/ci2go | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/davejacobsen/HapticHaven | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/freesuraj/TLDR | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/coderyi/Monkey | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tt1k/FakeGithub | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/haolloyin/MrCode | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/essentiaone/Essentia-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/breadwallet/breadwallet-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/SeekingMini/MoneyPlus | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tt1k/money-mate | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/austinzheng/iOS-2048 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/PankajGaikar/Instagram-Clone-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ulritter/FrozenPengu | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/austinzheng/swift-2048 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ericjohnson/canabalt-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/hadobedo/FunkiniOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jpsim/CardsAgainst | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/id-Software/DOOM-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/id-Software/DOOM-IOS2 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/WelkinXie/FiveInARow | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/newlinedotco/FlappySwift | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/herzbube/littlego | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/splinesoft/MUDRammer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/cl7/Sakura-Fly | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/phpmaple/Stick-Hero-Swift | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/id-Software/Wolf3D-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DerLobi/Depressed | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Darktt/HealthKit-Swift | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ResearchKit/MyHeartCounts | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rob-miller/rTracker | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/PiXeL16/SnakeClassic | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Brimizer/Slidden | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/da3x/GeoLicious | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/owntracks/ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kiliankoe/ParkenDD | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/hanton/Fisheye | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/audiokit/AudioKit | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/yuripetrosyan/Controllers | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/AudioKit/ROMPlayer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/artsy/eigen | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/naoyashiga/Dunk | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/FlexMonkey/Filterpedia | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/KMindeguia/movies | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/RF-Nelson/open-source-selfie-stick | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ijoshsmith/swift-ascii-art | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/analogcode/Swift-Radio-Pro | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/xcoo/upupu | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/videolan/vlc | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MoZhouqi/VoiceMemos | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/paulrehkugler/xkcd | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mamaral/xkcd-Open-Source | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MengTo/DesignerNewsApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/itsliamdowd/Project-Democracy | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/EvgenyKarkan/Feeds4U | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/TabDump | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/singro/v2ex | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/amitburst/HackerNews | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/weiran/Hackers | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rnystrom/HackerNewsReader | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/wikimedia/wikipedia-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/wordpress-mobile/WordPress-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/scotteg/LayerPlayer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/openshopio/openshop.io-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/pointspy/shlist | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/shagedorn/StateRestorationDemo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Lax/Learn-iOS-Swift-by-Examples | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/freeotp/freeotp-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Lyndir/MasterPassword | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/AlexCatch/Oak | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/criticalmaps/criticalmaps-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/aerlinn13/planc | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/saxobroko/SaxWeather | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/JakeLin/SwiftLanguageWeather | Failed after retries |
| https://github.com/thoughtbot/Tropos | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jsphkhan/ReactNativeExamples | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/YouXianMing/YoCelsius | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Aufree/phphub-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/soffes/bar | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/irace/BlogQuest | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/aharren/CardDecks | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jpsim/DeckRocket | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/thomasfinch/GammaThingy | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/misteu/VocabularyTraining | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nathanmsmith/MirrorPlusPlus | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mperovic/my41 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/owncloud/ios-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/iAugux/Phonetic | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Netfilter-Com/PopulationClock | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/WireGuard/wireguard-apple | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/twocentstudios/vinylogue | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/wwdc | Invalid URL |
| https://github.com/FlexMonkey/ForceSketch | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/FlexMonkey/Plum-O-Meter | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/croossin/Malendar | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tnantoka/edhita | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dasdom/Tomate | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/EvgenyKarkan/TrackMyTime | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mbcrump/TasksForSwiftWithPersistingData | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/how-much | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/wwayne/react-native-nba-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/facebook/react-native/tree/master/packages/rn-tester | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/benoitvallon/react-native-nw-react-calculator | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/catalinmiron/react-native-dribbble-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/7kfpun/FinanceReactNative | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/alexissan/ReactNativeWorkshop | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/illu/moonwalk | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/IFours/react-native-twitch | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/artsy/eidolon | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rambler-digital-solutions/rambler-it-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MoralCode/MetricTime | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ogoguel/activegs-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/libretro/RetroArch | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/yoshisuga/MAME4iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/litchie/dospad | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/hrydgard/ppsspp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/EvgenyKarkan/ScaryFlight | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MoralCode/MiamiSunglasses | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/raaxis/nds4ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/emufreak/iAmiga | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/hilen/TSWeChat | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/4np/UitzendingGemist | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/scribblemaniac/Fibonacc-iClock | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Keith-43/MuVis | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/polydice/iCook-tvOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/BalestraPatrick/Tweetometer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mapsme/omim | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/insurgentgames/Skeleton-Key-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mrdepth/Neocom | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mattrubin/authenticator | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/CodeHubApp/CodeHub | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ifrotz/iosfrotz | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/sprang/Inkpad | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/prey/prey-ios-client | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/xbmc/xbmc | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/xbmc/xbmc | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tutao/tutanota | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ColdGrub1384/Pisth | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/matomo-org/matomo-mobile-2 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/haiwen/seafile-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/osmandapp/Osmand | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/HabitRPG/habitica-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ArtifexSoftware/mupdf | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kiwix/kiwix-apple | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/FreeRDP/FreeRDP | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/cloverstudio/Spika | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/OnionBrowser/OnionBrowser | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/openhab/openhab-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/thomasokken/free42 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/miataru/miataru-ios-client | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MrAdamBoyd/Pictograph | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MrAdamBoyd/DownTube | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/uiheros/react-native-redux-todo-list | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/JakeLin/SaveTheDot | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/RxSwiftCommunity/RxMarbles | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tirupati17/sip-calculator-swift | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ivan-magda/Tagger | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/zydeco/minivmac4ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/traccar/traccar-client-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/traccar/traccar-manager-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/danqing/2048 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ethanhuang13/blahker | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fabiensanglard/Shmup | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/themoji/ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/blinksh/blink | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/WWDCScholars/iOS-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rwema3/FindSeat-App | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jbkuczma/NBAreact | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ivan-magda/UpcomingMovies | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/hackfoldr/hackfoldr-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/enochng1/RaceMe | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/element-hq/element-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/element-hq/element-x-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/wireapp/wire-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fabienwarniez/Vie | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/osia | Failed after retries |
| https://github.com/lurado/MovieDict | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/open-source-ios-apps/blob/master/ARCHIVE.md | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/iCHAIT/awesome-macOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/pcqpcq/open-source-android-apps | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Yalantis/PixPic | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ivan-magda/Californication | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kahopoon/QR-Blank | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/automattic/simplenote-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/aslanyanhaik/youtube-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fangwei716/30-days-of-react-native | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/thomaspaulmann/HeartControl | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kartaview/ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ISBX/apprtc-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/iCepa/iCepa | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/johnmahlon/Coffee-Ratio | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/devxoul/RxTodo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/vapor-community/chat-ios-example | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ptsochantaris/trailer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/JustinFincher/GitHubContributionsiOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tpgoffline/tpg-offline-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tirupati17/currency-converter-swift3.0-viper | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/frogatto/frogatto | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/sephine/lumio | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/filipealva/Cepp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/monal-im/Monal | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tryswift/trySwiftNYC | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Jasonette/JASONETTE-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ndfred/iperf-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Kapeli/Dash-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/TryFetch/Fetch | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/iAlexander/Homepok | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/noodlewerk/NWPusher | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/JuneDomingo/movieapp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kickstarter/ios-oss | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/thiagolioy/marvelapp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/adamwulf/loose-leaf | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/standardnotes/mobile | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/paulsumit1993/DailyFeed | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/steventroughtonsmith/MobileTerminal | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/orta/Relay-Artist-Example | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/keybase/client | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ooni/probe-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/5calls/ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tryswift/trySwiftAppFinal | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/sgl0v/WWDCast | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/eugenebokhan/Awesome-ML | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/sindresorhus/blear | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/birkir/kvikmyndr-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/gabrieloc/GIOVANNI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/BalestraPatrick/AppleWatchCalculator | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ezefranca/watchpresenter | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/FlineDev/Prayer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/wwdc-family/app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/KrisYu/LivelyGIFs | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jeroensmeets/11t | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/efremidze/Alarm | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/remirobert/Github-contributions | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/vadymmarkov/reviewery-mobile | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/expo/expo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kryptco/krypton-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/devxoul/Drrrible | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/SpongeBobSun/Prodigal-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/firebase/quickstart-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jdisho/Papr | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/google/mechahamster | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/satya164/PocketGear | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mssun/passforios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/niftycode/ZeitSuche_iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/diogot/MyWeight | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/open-source-ios-apps/blob/master/APPSTORE.md | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/yohannes/Thoughtless | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/shankqr/4xMobileGame | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/GitHawkApp/GitHawk | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/chadaustin/passdrop | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rnystrom/SimpleWeather | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/googlecast/CastVideos-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/gitpoint/git-point | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/relatedcode/Messenger | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/AndrewBennet/ReadingListV1 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/olucurious/awesome-arkit | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/eleev/tic-tac-toe | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/alexruperez/MADBike | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/simonbs/SBSAnimoji | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/crspybits/SharedImages | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/insidegui/AnimojiStudio | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/RishabhTayal/Unofficial-iTC | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/marty-suzuki/iOSDesignPatternSamples | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Glucosio/glucosio-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Buglife/Buglife-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/istornz/iPokeGo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mattlawer/FaceLandmarksDetection | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/KrauseFx/MajorKey | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/wallabag/ios-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/bartonhammond/snowflake | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/terrychou/iVim | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tiagomartinho/Reminders | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/xYello/ThePost | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/roymckenzie/Go-Flashcards | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/cozy/cozy-drive | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fossasia/susi_iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/OpenStack-mobile/summit-app-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/TrustWallet/trust-wallet-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/softdevstory/OhMyPlane | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Evolution-App/iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/vermont42/RaceRunner | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/vermont42/Conjugar | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nextcloud/ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nextcloud/talk-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/padloc/padloc | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jonluca/PasteBinApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/AdrienVillez/LOST-Location | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tls-inspector/tls-inspector | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/awkward/beam | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/AdguardTeam/AdguardForiOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Ckitakishi/MetaX | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/glushchenko/fsnotes | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/novinfard/SmartWallet | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/snowhaze/SnowHaze-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/novinfard/TranscriptionHelper | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/cuappdev/podcast-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/txaiwieser/FityIt | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/thiagoricieri/Mojilist | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/popshootjapan/WeiWallet-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/bitwarden/mobile | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nightscout/nightguard | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/TortugaPower/BookPlayer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ethanhuang13/ladybug | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/matiasvillaverde/mobile-ios-vipergame | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/eleev/flappy-fly-bird | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/AudioKit/AudioKitSynthOne | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/twostraws/Unwrap | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/willhains/Kotoba | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/louisdh/savanna | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/smalam119/live-news-viper | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ltebean/Live | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/khoren93/SwiftHub | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/eonist/summon | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/archagon/good-spirits | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/riley-usagi/SwiftAdvance | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/shu223/iOS-Depth-Sampler | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Stmol/vkphotos | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/VamshiIITBHU14/YouTubeClone | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/davedelong/MVCTodo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/steventroughtonsmith/SpriteKitWatchFace | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/SherlockQi/HeavenMemoirs | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/marty-suzuki/ArtShredder | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Q-Mobile/Model2App | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/laurent22/joplin | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/akarataev/gleam-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/julianschiavo/Playerly | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Augustyniak/FileExplorer | Failed after retries |
| https://github.com/emredurukn/betcalsa | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tapmoko/typestyle | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/catrobat/catty | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kuglee/TermiWatch | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Karambirov/GitHubSearch | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/k-lpmg/GiTiny | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/open-source-ios-apps/blob/master/LATEST.md | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nicklockwood/Swiftenstein | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tinode/ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/home-assistant/iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/LumingYin/PDFToKeynote-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/MovieSwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/keepassium/KeePassium | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/horizontalsystems/unstoppable-wallet-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/automat-berlin/afone/ | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/confirmedcode/lockdown-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/groue/GRDBCombine | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/flappy-royale/flappy-royale | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Neko3000/Iris.iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Haptic-Apps/Slide-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nsoojin/BookStore-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/strongbox-password-safe/Strongbox | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mkhrapov/sansumoku | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/s-s/dnscloak | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/passepartoutvpn/passepartout | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/altstoreio/AltStore | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/gdombiak/OctoPod | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tirupati17/giphy-mvvm-swift | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/tirupati17/giphy-mvvm-swift (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108019b50>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/tirupati17/contacts-mvp-swift | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/tirupati17/contacts-mvp-swift (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080297c0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/woocommerce/woocommerce-ios | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/woocommerce/woocommerce-ios (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108032520>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/AlphaWallet/alpha-wallet-ios | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/AlphaWallet/alpha-wallet-ios (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108013940>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/exantech/exa-wallet-ios | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/exantech/exa-wallet-ios (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080294c0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/mecid/swiftui-recipes-app | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/mecid/swiftui-recipes-app (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080293d0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/igravitystudios/matchimals.fun | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/igravitystudios/matchimals.fun (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108013370>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/CoyoteLab/Studies-Siri-Shortcut-iOS-13 | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/CoyoteLab/Studies-Siri-Shortcut-iOS-13 (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108013280>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/mkhrapov/ultimate-peg-solitaire | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/mkhrapov/ultimate-peg-solitaire (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080298b0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/triangledraw/TriangleDraw-iOS | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/triangledraw/TriangleDraw-iOS (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108030b80>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/Dimillian/OSRSUI | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/Dimillian/OSRSUI (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080137f0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/unixzii/SwiftUI-2048 | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/unixzii/SwiftUI-2048 (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108013bb0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/emoncms/emoncms-ios | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/emoncms/emoncms-ios (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029070>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/alfianlosari/CoronaVirusTrackerSwiftUI | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/alfianlosari/CoronaVirusTrackerSwiftUI (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108030d90>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/Ranchero-Software/NetNewsWire | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/Ranchero-Software/NetNewsWire (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080138e0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/MhdHejazi/CoronaTracker | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/MhdHejazi/CoronaTracker (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080135e0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/MartinStamenkovski/LibraryGenesis | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/MartinStamenkovski/LibraryGenesis (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029130>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/suicidesafetyplan/safetyplan-ios | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/suicidesafetyplan/safetyplan-ios (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108030df0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/deltachat/deltachat-ios | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/deltachat/deltachat-ios (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108013790>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/ColdGrub1384/LibTerm | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/ColdGrub1384/LibTerm (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108013c70>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/soroushchehresa/iran-coronavirus | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/soroushchehresa/iran-coronavirus (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080298b0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/KhaosT/open-apollo | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/KhaosT/open-apollo (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080292e0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/dkhamsing/covid19.swift | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/dkhamsing/covid19.swift (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108013d30>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/nploi/corona_tracker | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/nploi/corona_tracker (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108013a00>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/dopebase/messenger-iOS-chat-swift-firestore | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/dopebase/messenger-iOS-chat-swift-firestore (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029250>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/rrroyal/Harbour | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/rrroyal/Harbour (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029fa0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/manolosavi/xFonts | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/manolosavi/xFonts (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108030670>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/OpenASL/Fingerspelling-iOS | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/OpenASL/Fingerspelling-iOS (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108030df0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/fromkk/FreeTimePicker | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/fromkk/FreeTimePicker (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029af0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/podverse/podverse-rn | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/podverse/podverse-rn (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029b20>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/iKenndac/Tofu | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/iKenndac/Tofu (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108030550>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/Jigsaw-Code/outline-apps | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/Jigsaw-Code/outline-apps (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108030d90>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/carson-katri/reddit-swiftui | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/carson-katri/reddit-swiftui (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029be0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/pedrommcarrasco/ARbusters | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/pedrommcarrasco/ARbusters (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029760>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/devxoul/SwiftUITodo | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/devxoul/SwiftUITodo (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108030100>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/Dimillian/ACHNBrowserUI | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/Dimillian/ACHNBrowserUI (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108030a00>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/marty-suzuki/GitHubSearchWithSwiftUI | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/marty-suzuki/GitHubSearchWithSwiftUI (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029820>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/netguru/baby-monitor-client-ios | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/netguru/baby-monitor-client-ios (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080298e0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/msal4/royal_news | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/msal4/royal_news (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108030af0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/fossasia/open-event-organizer-ios | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/fossasia/open-event-organizer-ios (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108030f10>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/VamshiIITBHU14/FakeFBWall | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/VamshiIITBHU14/FakeFBWall (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029670>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/CrunchyBagel/TracePrivately | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/CrunchyBagel/TracePrivately (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029610>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/chuongtrh/palette-from-image | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/chuongtrh/palette-from-image (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108032e80>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/soapyigu/Swift-30-Projects | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/soapyigu/Swift-30-Projects (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080297f0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/lucaslimapoa/NewsAPISwift | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/lucaslimapoa/NewsAPISwift (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108032fd0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/gtokman/Restaurant-Viewing-App | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/gtokman/Restaurant-Viewing-App (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080327c0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/HassanElDesouky/VoiceMemosClone | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/HassanElDesouky/VoiceMemosClone (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108013a60>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/dkhamsing/news | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/dkhamsing/news (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x1080291c0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/objcio/app-architecture | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/objcio/app-architecture (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108032ac0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/alfianlosari/SwiftUI-MovieDB | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/alfianlosari/SwiftUI-MovieDB (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108032250>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/aranja/rakning-c19-app | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/aranja/rakning-c19-app (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108013b20>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/covid19cz/erouska-ios | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/covid19cz/erouska-ios (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029430>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/MohGovIL/hamagen-react-native | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/MohGovIL/hamagen-react-native (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108032a00>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/theindianappguy/FlutterNewsApp | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/theindianappguy/FlutterNewsApp (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108032a60>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/alfianlosari/SwiftUICDExpenseTrackerCompleted | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/alfianlosari/SwiftUICDExpenseTrackerCompleted (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108013ac0>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/alfianlosari/CoronaVirusTrackerFlutter | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/alfianlosari/CoronaVirusTrackerFlutter (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108029f70>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/Clean-Swift/CleanStore | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/Clean-Swift/CleanStore (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108032160>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/rodydavis/gmail_clone | Exception: HTTPSConnectionPool(host='api.github.com', port=443): Max retries exceeded with url: /repos/rodydavis/gmail_clone (Caused by NameResolutionError("<urllib3.connection.HTTPSConnection object at 0x108032610>: Failed to resolve 'api.github.com' ([Errno 8] nodename nor servname provided, or not known)")) |
| https://github.com/kwonye/calcupad | Not Archived |
| https://github.com/Joker462/COVID-19_SwiftUI_Demo | Not Archived |
| https://github.com/migueldeicaza/SwiftTerm | Not Archived |
| https://github.com/gao0122/ARKit-Example-by-Apple | Not Archived |
| https://github.com/austrianredcross/stopp-corona-ios | Not Archived |
| https://github.com/latifatcii/DailyNews | Not Archived |
| https://github.com/fromkk/iOSDCRC | Not Archived |
| https://github.com/mathieudutour/TimeLines | Not Archived |
| https://github.com/e-mission/e-mission-phone | Not Archived |
| https://github.com/holzschu/a-shell | Not Archived |
| https://github.com/AlexeyVoronov96/NewsApp-With-SwiftUI-And-Combine | Not Archived |
| https://github.com/simple-login/Simple-Login-iOS | Not Archived |
| https://github.com/alfianlosari/KanbanDragDropiOS | Not Archived |
| https://github.com/ethanswift/NewsAnalyzer | Not Archived |
| https://github.com/pointfreeco/swift-composable-architecture/tree/master/Examples/TicTacToe | Not Archived |
| https://github.com/ethanswift/DiscussIt | Not Archived |
| https://github.com/heyrahulrs/ASETimerSwiftUI | Not Archived |
| https://github.com/StepicOrg/stepik-ios | Not Archived |
| https://github.com/git-up/GitUp | Not Archived |
| https://github.com/ayush221b/newsline | Not Archived |
| https://github.com/incipher/einmal | Archived |
| https://github.com/zackshapiro/SwiftUIAirtableDemo | Not Archived |
| https://github.com/eleev/compositional-layouts-kit | Not Archived |
| https://github.com/cyrildiagne/ar-cutpaste | Not Archived |
| https://github.com/dkhamsing/fastmdb | Not Archived |
| https://github.com/youstanzr/YouTag | Not Archived |
| https://github.com/fimuxd/GITGET | Not Archived |
| https://github.com/Ivaskuu/travel-guide_app | Not Archived |
| https://github.com/Blackjacx/Gasoline | Not Archived |
| https://github.com/sonsongithub/reddift | Archived |
| https://github.com/mattermost/mattermost-mobile | Not Archived |
| https://github.com/chatwoot/chatwoot-mobile-app | Not Archived |
| https://github.com/jitsi/jitsi-meet | Not Archived |
| https://github.com/shankarmadeshvaran/SwiftUI_Tasks | Not Archived |
| https://github.com/emcro/SwiftUI-Keyboard-Demo | Not Archived |
| https://github.com/AU-COVIDSafe/mobile-ios | Not Archived |
| https://github.com/sgr-ksmt/FireTodo | Not Archived |
| https://github.com/bouk/HTTPS4All | Not Archived |
| https://github.com/OpenCovidTrace/octrace-ios | Not Archived |
| https://github.com/jpsim/Milestones | Not Archived |
| https://github.com/SwissCovid/swisscovid-app-ios | Not Archived |
| https://github.com/corona-warn-app/cwa-app-ios | Archived |
| https://github.com/moonlight-stream/moonlight-ios | Not Archived |
| https://github.com/frostland/GPS-Stone | Not Archived |
| https://github.com/dkhamsing/stocks | Not Archived |
| https://github.com/sobri909/ArcMini | Not Archived |
| https://github.com/openfoodfacts/openfoodfacts-ios | Archived |
| https://github.com/kitasuke/SwiftUI-Flux | Not Archived |
| https://github.com/Say-Their-Name/say-their-names-ios | Not Archived |
| https://github.com/caiobzen/water-reminder-swiftui | Not Archived |
| https://github.com/renaudjenny/telltime | Not Archived |
| https://github.com/alexliubj/SwiftUI-Currency-Converter | Not Archived |
| https://github.com/IanKeen/TweetleDumb | Not Archived |
| https://github.com/oleksii-demedetskyi/SwiftUI-UDF-Demo | Not Archived |
| https://github.com/dkhamsing/upcomingtv | Not Archived |
| https://github.com/Widle-Studio/Grocery-App | Not Archived |
| https://github.com/Pondorasti/StonkScorer | Not Archived |
| https://github.com/immuni-app/immuni-app-ios | Archived |
| https://github.com/marlon360/grade-calc | Not Archived |
| https://github.com/leathalman/Jotify | Not Archived |
| https://github.com/scalefocus/virusafe-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/V8tr/InfiniteListSwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ProteGO-Safe/ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fimuxd/BringMyOwnBeer- | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rileytestut/Clip | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/airbnb/HorizonCalendar | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/leavenstee/InstaFake-Swift-UI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jhatin94/tempatlas-swiftui | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/albertopeam/Podcasts | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rajdeep/proton | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ProtonMail/ios-mail | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/SchwiftyUI/NewsApiApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/donbytyqi/PapersSwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ThasianX/DivRise | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ThasianX/SpotifyRadar | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/chris-swift-dev/Beers | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/StephenMcMillan/Dub-Dub-Do | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/antranapp/IndieApps | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Chubby-Apps/SafeTimer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/LASER-Yi/SwiftUI-APOD | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ViniciusDeep/Revill | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Benetos/Mamoot | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dkhamsing/listapp.ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/invoiceninja/admin-portal | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dempseyatgithub/MemeMaker | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/molcik/swiftui-elements | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fulldecent/formant-analyzer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/superarcswift/SwiftCommunity | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/NozeIO/NeoIRC | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fulldecent/8-ball-answer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fulldecent/pizzaman | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/khuong291/Flutter-Movie | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jordansinger/SwiftUI-Kit | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/surfstudio/StackOv | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/thestoneage/IDResistors | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/NavdeepSinghh/RxSwift_MVVM_Finished | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/bakkenbaeck/daylight-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/vijaywargiya/Translate-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/razeware/emitron-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/PangMo5/AniTime | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/atrinh0/sfsymbols | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/niazoff/Weather | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/simpledotorg/bp-passport | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/minvws/nl-covid19-notification-app-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ericlewis/ShoppingList | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/sbertix/Swiftagram | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/NathanFallet/MorpionTPE-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/heart/CarBode-Barcode-Scanner-For-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/joreilly/BikeShare | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/eleev/swiftui-2048 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/cds-snc/covid-alert-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/amahi/ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/CovidWorld/ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jogendra/phimpme-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kxvn-lx/Ghibliii | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kxvn-lx/Kontax-Cam | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MaisaMilena/MyAnimeList | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rickwierenga/heartbeat-tutorials/tree/master/MultiplatformApp/ | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rcaos/TVToday | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MarcinusX/flutter_ui_challenge_flight_search | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/andrewcbancroft/BlogIdeaList-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/bastienFalcou/Portfolio | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/onmyway133/Recipes | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/bluemix/tourism-demo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jesusrp98/spacex-go | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Path-Check/safeplaces-dct-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jogendra/gravityBlocks | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kserko/CineReel | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/antranapp/SwiftUIMindBlowing | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/covidwatchorg/covidwatch-ios-en | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Norbert515/BookSearch | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Shabang-Systems/Condution | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kodecocodes/swiftui-example-app-koober | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/camiloibarrayepes/AlamofireStarWarsExample | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MDSADABWASIM/Toughest | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ra1028/SwiftUI-Combine | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mythxn/DesignCode-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dempseyatgithub/UnofficialSandwiches | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/inamiy/Harvest-SwiftUI-Gallery | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/stevenselcuk/Pomosh-iOS-watchOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ivanvorobei/SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/TUM-Dev/Campus-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kitasuke/SwiftUI-MVVM | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/CastIrony/Fivey | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/utmapp/UTM | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/atrinh0/buttoncraft | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/niazoff/Chat | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/appbrewery/Xylophone-iOS13 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/BalestraPatrick/FlightUtilities | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DerekSelander/yacd | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/timfraedrich/OutRun | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nalexn/clean-architecture-swiftui | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/hbmartin/Directory-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fossasia/open-event-attendee-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/crafterm/swiftui-app-switcher | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/YusukeHosonuma/SwiftUI-LifeGame | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ukhsa-collaboration/covid-19-app-ios-ag-public | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jogendra/technex-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rursache/ToDoList | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Alfresco/alfresco-ios-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/hyperoslo/BarcodeScanner | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nicklockwood/Chess | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/TheCodeMonks/NYTimes-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/meteochu/Blurry | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/phillfarrugia/appstore-clone | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ibhavikmakwana/Fluttery-Filmy | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/steventroughtonsmith/files-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/NiftyTreeStudios/Bean-Juice | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/victorpanitz/iOS-SortingAlgorithmsApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/appbrewery/Flash-Chat-iOS13 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/elkiwy/KHabit | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/igorkulman/iOSSampleApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MotionMobs/Sandwhich | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/cheeaun/hackerweb-native-2 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/damoonrashidi/bitalarm | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fimuxd/BringMyOwnBeer-Combine | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/AnderGoig/github-contributions-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/hungps/flutter_pokedex | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/alfianlosari/SwiftUIAuthenticationCompleted | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/RedBrogdon/flutterflip | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/RadarCOVID/radar-covid-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ghewgill/puzzles | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nerdsupremacist/CovidUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/MortyUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jonaspoxleitner/minimalistic_push | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/JohnYezub/NewsFeed_SwiftUI_MVVM | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/trentpiercy/trace | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/securityfirst/Umbrella_ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/pietrocaselani/CouchTracker | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MaximeHeckel/sunshine-weather-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/christianampe/film-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/vinhnx/Clendar | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Neko3000/Monotone | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/87kangsw/GitTime | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kyledold/WordOfTheDay | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jordansinger/lil-news-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jpsim/ZenTuner | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MSzalek-Mobile/weight_tracker | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/appbrewery/BMI-Calculator-iOS13 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/FranckNdame/swiftui.builds | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/aaronoe/FlutterCinematic | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/StewartLynch/iOS-14-Widget | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/venkatasg/DeTeXt | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/appcoda/TextScanner | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ExistOrLive/GithubClient | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/metabolist/metatext | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/pointfreeco/isowords | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jtsaeed/Hour-Blocks | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nathanborror/logger | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/NathanFallet/OCaml | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nemecek-filip/CompositionalDiffablePlayground.ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ByCyril/iSpy-Game | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ivirtex/networkarch-old | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kgellci/Area51 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/CovidTrackerFr/vitemadose-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/alfianlosari/ImageFilterSwiftUICompleted | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mullvad/mullvadvpn-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/BurntCaramel/CollectedApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/richardtop/CalendarApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/admin-ch/CovidCertificate-App-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/chanify/chanify-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/zzanehip/The-OldOS-Project | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nikitamounier/tapit-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/oblador/hush | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/microdotblog/microblog-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/GroupeMINASTE/FMobile-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/onl1ner/BarcodeScanner | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/soramitsu/fearless-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/EhPanda-Team/EhPanda | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/3003h/Eros-FE | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/TCNCoalition/tcn-client-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/XKCDY/app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Stop-COVID-19-Croatia/stopcovid19-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Blakexx/CryptoTracker | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/THLfi/koronavilkku-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/roughike/inKino | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/philipturner/ar-multipendulum | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/AnthonyH93/GoCycling | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/woxtu/SwiftUI-HackerNews | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/JosephDuffy/Overamped | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/arnoappenzeller/PiPifier | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Person2099/HTTPS-Responses | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jazzychad/iCloudCoreDataStarter | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/TICESoftware/tice-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DreamingInBinary/Custom-ViewController-Transitions | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MrKai77/Binary-Clock-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ProtonVPN/ios-mac-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jeffreybergier/Hipstapaper | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/pia-foss/mobile-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Infomaniak/ios-kDrive | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ppy/osu | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rainbow-me/rainbow | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/denoni/SpotifyClone | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mitchtabian/Food2Fork-KMM | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/project-violet/violet | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DaidoujiChen/Dai-Hentai | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/touchlab/DroidconKotlin | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jareksedy/Elseweather | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kolplattformen/skolplattformen | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/joreilly/StarWars | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/AnupAmmanavar/Mvi-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/GrailerApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/peterfriese/SwiftUI-Concurrency-Essentials | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ntnhon/Random-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MaikCL/PKDex-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mongodb-developer/BlackJackTrainer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/scribe-org/Scribe-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jordansinger/lil-wallet | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/almormd/Splito | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/atrinh0/spiro | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/atrinh0/covid19 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/joreilly/WordMasterKMP | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/peterfriese/MakeItSo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ecrichlow/LootRaideriOS_OS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ChoiysApple/My-Little-Popcat | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/draese/TwitterSentiment | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/londonappbrewery/bmi-calculator-flutter | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jellyfin/Swiftfin | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/willowtreeapps/vocable-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/niochat/nio | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ericlewis/DeltaUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Thomvis/Construct | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/shameemreza/critterclan | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/gematik/E-Rezept-App-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/AnthonyH93/HexaCalc | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/twtstudio/WePeiYang-iOS-Everest | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Livinglist/Hacki | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fatih-gursoy/Projector | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/cagnulein/qdomyos-zwift | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/chFlorian/DesignRemakes | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/TheCodeTraveler/GitTrends | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kudoleh/iOS-Clean-Architecture-MVVM | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DeluxeAlonso/UpcomingMovies | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/AnthonyH93/NHLTracker | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kudoleh/iOS-Modular-Architecture | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kalismeras61/flutter_wallet_ui | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/theankurkedia/NewsBuzz | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/vincode-io/Zavala | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/StewartLynch/Homescreen-Quick-Actions | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/vincode-io/Humboldt | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MatthewWaller/MarkyMarkdown | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/The-Roundtable | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Samaritan1011001/Trovami | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jbarr21/flews | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/StewartLynch/UbiquitousKeyValue-Storage | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/aleksanderwozniak/deer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mastodon/mastodon-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nicklockwood/Swune | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/migueldeicaza/SwiftTermApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jtrivedi/Apple-Cash-Animation | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/cinderella-project/iMast | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/yattee/yattee | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/linagora/Twake-Mobile | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/zulip/zulip-mobile | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/status-im/status-mobile | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/maxhumber/BreadBuddy | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jasudev/FabulaItemsProvider | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/adamrushy/social-swiftui-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/aheze/RealityKitLaunchScreen | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/anikaseibezeder/SwiftUISpeedrunChallenge | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/threema-ch/threema-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jegnux/SwiftUICameraAppSpeedrunChallenge | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/betzerra/Fecapp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/twostraws/simple-swiftui | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/apple/sample-food-truck | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/below/CarSample | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ryanlintott/DefibHeart | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/netless-io/flat-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jordibruin/Swift-Charts-Examples | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ChoiysApple/Asteroids-Plus | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dejager/atmos | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/daneden/Solstice | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/almormd/Learning | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/daneden/Broadcast | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/philipcdavis/VariableType | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/daneden/Zeitgeist | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/neodroid/Parallax-Card-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/aheze/ProgressGif | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ryanlintott/OvercastDrawer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/GetStream/purposeful-ios-animations | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/zehfernandes/wordnote | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/azamsharp/BudgetApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/joreilly/PeopleInSpace | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/joforsell/Cocktails | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/TelemetryDeck/TelemetryViewer | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/PaulaScholz/ApnsSample | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/pitt500/OnlineStoreTCA | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/firebase/friendlyeats-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jordibruin/Dynamic-Islands | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/SwiftyAlex/Samples | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mdanics/fluttergram | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/bimsina/wallpaper | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/256Arts/Sprite-Cutter | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/256Arts/Sprite-Pencil | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/256Arts/Sprite-Catalog | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/256Arts/Sprite-Fonts | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/256Arts/My-Assets | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/256Arts/Symbol-Code | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/256Arts/Space-UI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fatih-gursoy/Cuisiner | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/abdorizak/Expense-Tracker-App | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/VAnsimov/MVI-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/chockenberry/NowPlayingPlus | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Automattic/pocket-casts-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/aheze/OpenFind | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/avdyushin/Velik | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/aheze/SwiftUICraft | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/drpeterrohde/MoodSnap | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/IceCubesApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Piecelet/neodb-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/open-trackers/Gym-Routine-Tracker-Watch-App | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ynagatomo/ImgGenSD2 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/simonbengtsson/airdash | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ldakhoa/GistHub | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Sendeky/weatherkit-weather-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mshll/Color-Way | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ynagatomo/ARDiffMuseum | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/huggingface/swift-coreml-transformers | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DreamingInBinary/Spend-Stack-Public | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/movingparts-io/Pow-Examples | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ynagatomo/ARWallPicture | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/WezSieTato/ScanNow | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jogboms/tailor_made | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/bimsina/notes-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rayliverified/FlutterGames | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rwema3/Space_Empires | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/HSEIreland/covid-tracker-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jerald-jacob/Flutter-Apps | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kevmoo/slide_puzzle | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Sophiestication/Groceries | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/burhanrashid52/WhatTodo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/CarGuo/gsy_github_app_flutter | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Sophiestication/Tipulator | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rwema3/Math-Matrix-App | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ritwiktakkar/shorten_my_URL | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Sophiestication/Articles | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ritwiktakkar/WordDefiner | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/hamed8080/LeitnerBox | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/cocoa-mhlw/cocoa | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nate-parrott/web98 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/xpavle00/Habo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mehrankmlf/EasyCrypto | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/IvanBogdantsev/Toilet-Radar-Paris | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Livinglist/ZCombinator | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/brittanyarima/Steps | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nate-parrott/uhohlingo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/bluesky-social/social-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/brittanyarima/Sketchy | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/brittanyarima/MovieDB | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/metal-by-example/learn-metal-cpp-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/streetwriters/notesnook | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/apple/sample-backyard-birds | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/VladimirBrejcha/Rise | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ProtonDriveApps/ios-drive | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/immich-app/immich | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/prof18/feed-flow | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/localsend/localsend | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mikaelacaron/Basic-Car-Maintenance | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/DominatorVbN/DevSpotlight | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rarfell/dimeApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/laevandus/OnDemandAPIKeyExample | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/tommyxchow/frosty | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jtrivedi/Mesh-Transform-Animation | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/bcye/whathaveiread | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kevinyou77/Swordfish | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Sigil-Wen/Dream-with-Vision-Pro | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/barisozgenn/NetflixVisionPro | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/6/StonksPro | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/fabio914/BeatmapVisionPro | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Sigil-Wen/VisionCraft | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/kjwamlex/SpatialDock | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/logseq/logseq | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/openopus-org/concertmaster_ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/sebjvidal/UICollectionView-Collapsible-Section-Demo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/meggsila/EmployeeCheckin | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/gonchar/VisionProVacuumDemo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ml-explore/mlx-swift-examples | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/infinitepower18/Homepage-MobileSafari | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/apps-fab/exercism-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/sebjvidal/Apple-Music-UI-Demo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/yichengchen/ATV-Bilibili-demo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ivan-magda/ios-demo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/metal-by-example/metal-spatial-dynamic-mesh | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/bigjermaine/BetBudd | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nate-parrott/tortellini | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/wvabrinskas/PokePal | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/c-villain/SneakerShop | Exception: ('Connection aborted.', RemoteDisconnected('Remote end closed connection without response')) |
| https://github.com/simonoppowa/OpenNutriTracker | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/adamlyttleapps/OpenAI-Wrapper-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/dl-alexandre/SymbolGrid | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/YusuFKaan48/PixelWeather | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/YusuFKaan48/News | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/YusuFKaan48/NeuCalc | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/ivpn/ios-app | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/denissimon/iOS-MVVM-Clean-Architecture | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/denissimon/Cryptocurrency-Info | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/denissimon/distributed-model-training | Not Archived |
| https://github.com/XunMengWinter/PetNote-oss | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/joeldavidw/Chronos | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mainframecomputer/fullmoon-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/alexjlockwood/compose-multiplatform-2048 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Sage-Bionetworks/CardiorespiratoryFitness-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/adafruit/Basic-Chat | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/EmergeTools/hackernews | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/jaredwolff/swift-bluetooth-particle-rgb | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/nebs/hello-bluetooth | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/saulamsal/netflix-ui | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Dimillian/IcySky | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/mikelikesdesign/SwiftUI-experiments | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/hishd/RicketyRick-iOS | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/hishd/SkyWizard-SwiftUI | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/chsxf/SKTetris | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/robertwtucker/kfinderapp-ios | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/pixelfed/pixelfed-rn | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/chunkyguy/PhotoApp | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/msasikanth/twine | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/awaseem/foqos | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/rileytestut/Delta | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/LIJI32/SameBoy | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/lionheart/Pushpin | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/amikhaylin/pompaddo | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/amake/orgro | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Anuken/Mindustry | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/saber-notes/saber | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/onionshare/onionshare | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/csprasad/Mr-Tip | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Visual-Studio-Coder/QR-Share-Pro | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/Visual-Studio-Coder/Recap | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/il1ane/StoicQuotes | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/MCJack123/craftos2 | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/duckduckgo/apple-browsers | Forbidden (possibly private or rate limit exceeded) |
| https://github.com/basarsubasi/simplefitnessapp | Forbidden (possibly private or rate limit exceeded) |

*Last updated: 2025-05-21 16:14:40 UTC*