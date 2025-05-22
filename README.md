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
| https://github.com/kurozora/kurozora-app | Not Archived |
| https://github.com/ish-app/ish | Not Archived |
| https://github.com/Provenance-Emu/Provenance | Not Archived |
| https://github.com/belm/BaiduFM-Swift | Not Archived |
| https://github.com/bither/bither-ios | Not Archived |
| https://github.com/JohnWong/bus-today | Not Archived |
| https://github.com/lazerwalker/cortado | Not Archived |
| https://github.com/coolioxlr/watchOS-2-heartrate | Not Archived |
| https://github.com/G2Jose/ReactNative-HackerNews | Not Archived |
| https://github.com/Dimillian/SwiftHN | Not Archived |
| https://github.com/SaiBalaji-PSS/Scoop | Not Archived |
| https://github.com/VishwaiOSDev/Loadify-iOS | Not Archived |
| https://github.com/genadyo/WWDC | Not Archived |
| https://github.com/dropbox/PhotoWatch | Not Archived |
| https://github.com/D-32/WatchPics | Not Archived |
| https://github.com/mozilla-mobile/firefox-ios | Not Archived |
| https://github.com/chrisballinger/BLEMeshChat | Not Archived |
| https://github.com/aslanyanhaik/Quick-Chat | Not Archived |
| https://github.com/ChatSecure/ChatSecure-iOS | Not Archived |
| https://github.com/colloquy/colloquy | Not Archived |
| https://github.com/irccloud/ios | Not Archived |
| https://github.com/mumble-voip/mumble-iphoneos | Not Archived |
| https://github.com/signalapp/Signal-iOS | Not Archived |
| https://github.com/TelegramMessenger/Telegram-iOS | Not Archived |
| https://github.com/kodecocodes/RWDevCon-App | Not Archived |
| https://github.com/rocketshipapps/adblockfast | Not Archived |
| https://github.com/adblockplus/adblockplussafariios | Not Archived |
| https://github.com/krishkumar/BlockParty | Not Archived |
| https://github.com/ngs/ci2go | Not Archived |
| https://github.com/davejacobsen/HapticHaven | Not Archived |
| https://github.com/freesuraj/TLDR | Not Archived |
| https://github.com/coderyi/Monkey | Not Archived |
| https://github.com/tt1k/FakeGithub | Not Archived |
| https://github.com/haolloyin/MrCode | Not Archived |
| https://github.com/essentiaone/Essentia-iOS | Not Archived |
| https://github.com/breadwallet/breadwallet-ios | Not Archived |
| https://github.com/SeekingMini/MoneyPlus | Not Archived |
| https://github.com/tt1k/money-mate | Not Archived |
| https://github.com/austinzheng/iOS-2048 | Not Archived |
| https://github.com/PankajGaikar/Instagram-Clone-SwiftUI | Not Archived |
| https://github.com/ulritter/FrozenPengu | Not Archived |
| https://github.com/austinzheng/swift-2048 | Not Archived |
| https://github.com/ericjohnson/canabalt-ios | Not Archived |
| https://github.com/hadobedo/FunkiniOS | Not Archived |
| https://github.com/jpsim/CardsAgainst | Not Archived |
| https://github.com/id-Software/DOOM-iOS | Not Archived |
| https://github.com/id-Software/DOOM-IOS2 | Not Archived |
| https://github.com/WelkinXie/FiveInARow | Not Archived |
| https://github.com/newlinedotco/FlappySwift | Not Archived |
| https://github.com/herzbube/littlego | Not Archived |
| https://github.com/splinesoft/MUDRammer | Not Archived |
| https://github.com/cl7/Sakura-Fly | Not Archived |
| https://github.com/phpmaple/Stick-Hero-Swift | Not Archived |
| https://github.com/id-Software/Wolf3D-iOS | Not Archived |
| https://github.com/DerLobi/Depressed | Not Archived |
| https://github.com/Darktt/HealthKit-Swift | Not Archived |
| https://github.com/ResearchKit/MyHeartCounts | Not Archived |
| https://github.com/rob-miller/rTracker | Not Archived |
| https://github.com/PiXeL16/SnakeClassic | Not Archived |
| https://github.com/Brimizer/Slidden | Not Archived |
| https://github.com/da3x/GeoLicious | Not Archived |
| https://github.com/owntracks/ios | Not Archived |
| https://github.com/kiliankoe/ParkenDD | Not Archived |
| https://github.com/hanton/Fisheye | Not Archived |
| https://github.com/audiokit/AudioKit | Not Archived |
| https://github.com/yuripetrosyan/Controllers | Not Archived |
| https://github.com/AudioKit/ROMPlayer | Not Archived |
| https://github.com/artsy/eigen | Not Archived |
| https://github.com/naoyashiga/Dunk | Not Archived |
| https://github.com/FlexMonkey/Filterpedia | Not Archived |
| https://github.com/KMindeguia/movies | Not Archived |
| https://github.com/RF-Nelson/open-source-selfie-stick | Not Archived |
| https://github.com/ijoshsmith/swift-ascii-art | Not Archived |
| https://github.com/analogcode/Swift-Radio-Pro | Not Archived |
| https://github.com/xcoo/upupu | Not Archived |
| https://github.com/videolan/vlc | Not Archived |
| https://github.com/MoZhouqi/VoiceMemos | Not Archived |
| https://github.com/paulrehkugler/xkcd | Not Archived |
| https://github.com/mamaral/xkcd-Open-Source | Not Archived |
| https://github.com/MengTo/DesignerNewsApp | Not Archived |
| https://github.com/itsliamdowd/Project-Democracy | Not Archived |
| https://github.com/EvgenyKarkan/Feeds4U | Not Archived |
| https://github.com/dkhamsing/TabDump | Not Archived |
| https://github.com/singro/v2ex | Not Archived |
| https://github.com/amitburst/HackerNews | Not Archived |
| https://github.com/weiran/Hackers | Not Archived |
| https://github.com/rnystrom/HackerNewsReader | Not Archived |
| https://github.com/wikimedia/wikipedia-ios | Not Archived |
| https://github.com/wordpress-mobile/WordPress-iOS | Not Archived |
| https://github.com/scotteg/LayerPlayer | Not Archived |
| https://github.com/openshopio/openshop.io-ios | Not Archived |
| https://github.com/pointspy/shlist | Not Archived |
| https://github.com/shagedorn/StateRestorationDemo | Not Archived |
| https://github.com/Lax/Learn-iOS-Swift-by-Examples | Not Archived |
| https://github.com/freeotp/freeotp-ios | Not Archived |
| https://github.com/Lyndir/MasterPassword | Not Archived |
| https://github.com/AlexCatch/Oak | Not Archived |
| https://github.com/criticalmaps/criticalmaps-ios | Not Archived |
| https://github.com/aerlinn13/planc | Not Archived |
| https://github.com/saxobroko/SaxWeather | Not Archived |
| https://github.com/JakeLin/SwiftLanguageWeather | Not Archived |
| https://github.com/thoughtbot/Tropos | Not Archived |
| https://github.com/jsphkhan/ReactNativeExamples | Not Archived |
| https://github.com/YouXianMing/YoCelsius | Not Archived |
| https://github.com/Aufree/phphub-ios | Not Archived |
| https://github.com/soffes/bar | Not Archived |
| https://github.com/irace/BlogQuest | Not Archived |
| https://github.com/aharren/CardDecks | Not Archived |
| https://github.com/jpsim/DeckRocket | Not Archived |
| https://github.com/thomasfinch/GammaThingy | Not Archived |
| https://github.com/misteu/VocabularyTraining | Not Archived |
| https://github.com/nathanmsmith/MirrorPlusPlus | Not Archived |
| https://github.com/mperovic/my41 | Not Archived |
| https://github.com/owncloud/ios-app | Not Archived |
| https://github.com/iAugux/Phonetic | Not Archived |
| https://github.com/Netfilter-Com/PopulationClock | Not Archived |
| https://github.com/WireGuard/wireguard-apple | Not Archived |
| https://github.com/twocentstudios/vinylogue | Not Archived |
| https://github.com/wwdc | Invalid URL |
| https://github.com/FlexMonkey/ForceSketch | Not Archived |
| https://github.com/FlexMonkey/Plum-O-Meter | Not Archived |
| https://github.com/croossin/Malendar | Not Archived |
| https://github.com/tnantoka/edhita | Not Archived |
| https://github.com/dasdom/Tomate | Not Archived |
| https://github.com/EvgenyKarkan/TrackMyTime | Not Archived |
| https://github.com/mbcrump/TasksForSwiftWithPersistingData | Not Archived |
| https://github.com/dkhamsing/how-much | Not Archived |
| https://github.com/wwayne/react-native-nba-app | Not Archived |
| https://github.com/facebook/react-native/tree/master/packages/rn-tester | Not Archived |
| https://github.com/benoitvallon/react-native-nw-react-calculator | Not Archived |
| https://github.com/catalinmiron/react-native-dribbble-app | Not Archived |
| https://github.com/7kfpun/FinanceReactNative | Not Archived |
| https://github.com/alexissan/ReactNativeWorkshop | Not Archived |
| https://github.com/illu/moonwalk | Not Archived |
| https://github.com/IFours/react-native-twitch | Not Archived |
| https://github.com/artsy/eidolon | Archived |
| https://github.com/rambler-digital-solutions/rambler-it-ios | Not Archived |
| https://github.com/MoralCode/MetricTime | Archived |
| https://github.com/ogoguel/activegs-ios | Not Archived |
| https://github.com/libretro/RetroArch | Not Archived |
| https://github.com/yoshisuga/MAME4iOS | Not Archived |
| https://github.com/litchie/dospad | Not Archived |
| https://github.com/hrydgard/ppsspp | Not Archived |
| https://github.com/EvgenyKarkan/ScaryFlight | Not Archived |
| https://github.com/MoralCode/MiamiSunglasses | Archived |
| https://github.com/raaxis/nds4ios | Not Archived |
| https://github.com/emufreak/iAmiga | Not Archived |
| https://github.com/hilen/TSWeChat | Not Archived |
| https://github.com/4np/UitzendingGemist | Not Archived |
| https://github.com/scribblemaniac/Fibonacc-iClock | Not Archived |
| https://github.com/Keith-43/MuVis | Not Archived |
| https://github.com/polydice/iCook-tvOS | Not Archived |
| https://github.com/BalestraPatrick/Tweetometer | Not Archived |
| https://github.com/mapsme/omim | Not Archived |
| https://github.com/insurgentgames/Skeleton-Key-iOS | Not Archived |
| https://github.com/mrdepth/Neocom | Not Archived |
| https://github.com/mattrubin/authenticator | Not Archived |
| https://github.com/CodeHubApp/CodeHub | Archived |
| https://github.com/ifrotz/iosfrotz | Not Archived |
| https://github.com/sprang/Inkpad | Not Archived |
| https://github.com/prey/prey-ios-client | Not Archived |
| https://github.com/xbmc/xbmc | Not Archived |
| https://github.com/xbmc/xbmc | Not Archived |
| https://github.com/tutao/tutanota | Not Archived |
| https://github.com/ColdGrub1384/Pisth | Not Archived |
| https://github.com/matomo-org/matomo-mobile-2 | Not Archived |
| https://github.com/haiwen/seafile-iOS | Not Archived |
| https://github.com/osmandapp/Osmand | Not Archived |
| https://github.com/HabitRPG/habitica-ios | Not Archived |
| https://github.com/ArtifexSoftware/mupdf | Not Archived |
| https://github.com/kiwix/kiwix-apple | Not Archived |
| https://github.com/FreeRDP/FreeRDP | Not Archived |
| https://github.com/cloverstudio/Spika | Not Archived |
| https://github.com/OnionBrowser/OnionBrowser | Not Archived |
| https://github.com/openhab/openhab-ios | Not Archived |
| https://github.com/thomasokken/free42 | Not Archived |
| https://github.com/miataru/miataru-ios-client | Not Archived |
| https://github.com/MrAdamBoyd/Pictograph | Not Archived |
| https://github.com/MrAdamBoyd/DownTube | Not Archived |
| https://github.com/uiheros/react-native-redux-todo-list | Not Archived |
| https://github.com/JakeLin/SaveTheDot | Not Archived |
| https://github.com/RxSwiftCommunity/RxMarbles | Not Archived |
| https://github.com/tirupati17/sip-calculator-swift | Not Archived |
| https://github.com/ivan-magda/Tagger | Archived |
| https://github.com/zydeco/minivmac4ios | Not Archived |
| https://github.com/traccar/traccar-client-ios | Not Archived |
| https://github.com/traccar/traccar-manager-ios | Not Archived |
| https://github.com/danqing/2048 | Not Archived |
| https://github.com/ethanhuang13/blahker | Not Archived |
| https://github.com/fabiensanglard/Shmup | Not Archived |
| https://github.com/themoji/ios | Not Archived |
| https://github.com/blinksh/blink | Not Archived |
| https://github.com/WWDCScholars/iOS-app | Not Archived |
| https://github.com/rwema3/FindSeat-App | Not Archived |
| https://github.com/jbkuczma/NBAreact | Not Archived |
| https://github.com/ivan-magda/UpcomingMovies | Archived |
| https://github.com/hackfoldr/hackfoldr-iOS | Not Archived |
| https://github.com/enochng1/RaceMe | Not Archived |
| https://github.com/element-hq/element-ios | Not Archived |
| https://github.com/element-hq/element-x-ios | Not Archived |
| https://github.com/wireapp/wire-ios | Not Archived |
| https://github.com/fabienwarniez/Vie | Not Archived |
| https://github.com/dkhamsing/osia | Not Archived |
| https://github.com/lurado/MovieDict | Not Archived |
| https://github.com/dkhamsing/open-source-ios-apps/blob/master/ARCHIVE.md | Not Archived |
| https://github.com/iCHAIT/awesome-macOS | Not Archived |
| https://github.com/pcqpcq/open-source-android-apps | Not Archived |
| https://github.com/Yalantis/PixPic | Not Archived |
| https://github.com/ivan-magda/Californication | Archived |
| https://github.com/kahopoon/QR-Blank | Not Archived |
| https://github.com/automattic/simplenote-ios | Not Archived |
| https://github.com/aslanyanhaik/youtube-iOS | Not Archived |
| https://github.com/fangwei716/30-days-of-react-native | Not Archived |
| https://github.com/thomaspaulmann/HeartControl | Not Archived |
| https://github.com/kartaview/ios | Not Archived |
| https://github.com/ISBX/apprtc-ios | Not Archived |
| https://github.com/iCepa/iCepa | Not Archived |
| https://github.com/johnmahlon/Coffee-Ratio | Not Archived |
| https://github.com/devxoul/RxTodo | Not Archived |
| https://github.com/vapor-community/chat-ios-example | Not Archived |
| https://github.com/ptsochantaris/trailer | Not Archived |
| https://github.com/JustinFincher/GitHubContributionsiOS | Not Archived |
| https://github.com/tpgoffline/tpg-offline-iOS | Archived |
| https://github.com/tirupati17/currency-converter-swift3.0-viper | Not Archived |
| https://github.com/frogatto/frogatto | Not Archived |
| https://github.com/sephine/lumio | Not Archived |
| https://github.com/filipealva/Cepp | Not Archived |
| https://github.com/monal-im/Monal | Not Archived |
| https://github.com/tryswift/trySwiftNYC | Not Archived |
| https://github.com/Jasonette/JASONETTE-iOS | Not Archived |
| https://github.com/ndfred/iperf-ios | Not Archived |
| https://github.com/Kapeli/Dash-iOS | Not Archived |
| https://github.com/TryFetch/Fetch | Not Archived |
| https://github.com/iAlexander/Homepok | Not Archived |
| https://github.com/noodlewerk/NWPusher | Not Archived |
| https://github.com/JuneDomingo/movieapp | Not Archived |
| https://github.com/kickstarter/ios-oss | Not Archived |
| https://github.com/thiagolioy/marvelapp | Not Archived |
| https://github.com/adamwulf/loose-leaf | Not Archived |
| https://github.com/standardnotes/mobile | Archived |
| https://github.com/paulsumit1993/DailyFeed | Not Archived |
| https://github.com/steventroughtonsmith/MobileTerminal | Not Archived |
| https://github.com/orta/Relay-Artist-Example | Not Archived |
| https://github.com/keybase/client | Not Archived |
| https://github.com/ooni/probe-ios | Not Archived |
| https://github.com/5calls/ios | Not Archived |
| https://github.com/tryswift/trySwiftAppFinal | Not Archived |
| https://github.com/sgl0v/WWDCast | Not Archived |
| https://github.com/eugenebokhan/Awesome-ML | Not Archived |
| https://github.com/sindresorhus/blear | Not Archived |
| https://github.com/birkir/kvikmyndr-app | Not Archived |
| https://github.com/gabrieloc/GIOVANNI | Not Archived |
| https://github.com/BalestraPatrick/AppleWatchCalculator | Not Archived |
| https://github.com/ezefranca/watchpresenter | Not Archived |
| https://github.com/FlineDev/Prayer | Not Archived |
| https://github.com/wwdc-family/app | Not Archived |
| https://github.com/KrisYu/LivelyGIFs | Not Archived |
| https://github.com/jeroensmeets/11t | Not Archived |
| https://github.com/efremidze/Alarm | Not Archived |
| https://github.com/remirobert/Github-contributions | Not Archived |
| https://github.com/vadymmarkov/reviewery-mobile | Not Archived |
| https://github.com/expo/expo | Not Archived |
| https://github.com/kryptco/krypton-ios | Archived |
| https://github.com/SpongeBobSun/Prodigal-iOS | Not Archived |
| https://github.com/firebase/quickstart-ios | Not Archived |
| https://github.com/jdisho/Papr | Not Archived |
| https://github.com/google/mechahamster | Archived |
| https://github.com/satya164/PocketGear | Not Archived |
| https://github.com/mssun/passforios | Not Archived |
| https://github.com/niftycode/ZeitSuche_iOS | Not Archived |
| https://github.com/diogot/MyWeight | Not Archived |
| https://github.com/dkhamsing/open-source-ios-apps/blob/master/APPSTORE.md | Not Archived |
| https://github.com/yohannes/Thoughtless | Not Archived |
| https://github.com/shankqr/4xMobileGame | Not Archived |
| https://github.com/GitHawkApp/GitHawk | Archived |
| https://github.com/chadaustin/passdrop | Archived |
| https://github.com/rnystrom/SimpleWeather | Not Archived |
| https://github.com/googlecast/CastVideos-ios | Not Archived |
| https://github.com/gitpoint/git-point | Not Archived |
| https://github.com/relatedcode/Messenger | Not Archived |
| https://github.com/AndrewBennet/ReadingListV1 | Not Archived |
| https://github.com/olucurious/awesome-arkit | Not Archived |
| https://github.com/eleev/tic-tac-toe | Not Archived |
| https://github.com/alexruperez/MADBike | Not Archived |
| https://github.com/simonbs/SBSAnimoji | Not Archived |
| https://github.com/crspybits/SharedImages | Not Archived |
| https://github.com/insidegui/AnimojiStudio | Archived |
| https://github.com/RishabhTayal/Unofficial-iTC | Not Archived |
| https://github.com/marty-suzuki/iOSDesignPatternSamples | Not Archived |
| https://github.com/Glucosio/glucosio-ios | Not Archived |
| https://github.com/Buglife/Buglife-iOS | Not Archived |
| https://github.com/istornz/iPokeGo | Not Archived |
| https://github.com/mattlawer/FaceLandmarksDetection | Not Archived |
| https://github.com/KrauseFx/MajorKey | Not Archived |
| https://github.com/wallabag/ios-app | Not Archived |
| https://github.com/bartonhammond/snowflake | Archived |
| https://github.com/terrychou/iVim | Not Archived |
| https://github.com/tiagomartinho/Reminders | Not Archived |
| https://github.com/xYello/ThePost | Archived |
| https://github.com/roymckenzie/Go-Flashcards | Not Archived |
| https://github.com/cozy/cozy-drive | Not Archived |
| https://github.com/fossasia/susi_iOS | Not Archived |
| https://github.com/OpenStack-mobile/summit-app-ios | Not Archived |
| https://github.com/TrustWallet/trust-wallet-ios | Archived |
| https://github.com/softdevstory/OhMyPlane | Not Archived |
| https://github.com/Evolution-App/iOS | Not Archived |
| https://github.com/vermont42/RaceRunner | Not Archived |
| https://github.com/vermont42/Conjugar | Not Archived |
| https://github.com/nextcloud/ios | Not Archived |
| https://github.com/nextcloud/talk-ios | Not Archived |
| https://github.com/padloc/padloc | Not Archived |
| https://github.com/jonluca/PasteBinApp | Not Archived |
| https://github.com/AdrienVillez/LOST-Location | Not Archived |
| https://github.com/tls-inspector/tls-inspector | Not Archived |
| https://github.com/awkward/beam | Not Archived |
| https://github.com/AdguardTeam/AdguardForiOS | Not Archived |
| https://github.com/Ckitakishi/MetaX | Not Archived |
| https://github.com/glushchenko/fsnotes | Not Archived |
| https://github.com/novinfard/SmartWallet | Not Archived |
| https://github.com/snowhaze/SnowHaze-iOS | Not Archived |
| https://github.com/novinfard/TranscriptionHelper | Not Archived |
| https://github.com/cuappdev/podcast-ios | Not Archived |
| https://github.com/txaiwieser/FityIt | Not Archived |
| https://github.com/thiagoricieri/Mojilist | Not Archived |
| https://github.com/popshootjapan/WeiWallet-iOS | Not Archived |
| https://github.com/bitwarden/mobile | Archived |
| https://github.com/nightscout/nightguard | Not Archived |
| https://github.com/TortugaPower/BookPlayer | Not Archived |
| https://github.com/ethanhuang13/ladybug | Not Archived |
| https://github.com/matiasvillaverde/mobile-ios-vipergame | Not Archived |
| https://github.com/eleev/flappy-fly-bird | Not Archived |
| https://github.com/AudioKit/AudioKitSynthOne | Not Archived |
| https://github.com/twostraws/Unwrap | Not Archived |
| https://github.com/willhains/Kotoba | Not Archived |
| https://github.com/louisdh/savanna | Not Archived |
| https://github.com/smalam119/live-news-viper | Not Archived |
| https://github.com/ltebean/Live | Not Archived |
| https://github.com/khoren93/SwiftHub | Not Archived |
| https://github.com/eonist/summon | Not Archived |
| https://github.com/archagon/good-spirits | Not Archived |
| https://github.com/riley-usagi/SwiftAdvance | Not Archived |
| https://github.com/shu223/iOS-Depth-Sampler | Not Archived |
| https://github.com/Stmol/vkphotos | Not Archived |
| https://github.com/VamshiIITBHU14/YouTubeClone | Not Archived |
| https://github.com/davedelong/MVCTodo | Archived |
| https://github.com/steventroughtonsmith/SpriteKitWatchFace | Not Archived |
| https://github.com/SherlockQi/HeavenMemoirs | Not Archived |
| https://github.com/marty-suzuki/ArtShredder | Not Archived |
| https://github.com/Q-Mobile/Model2App | Not Archived |
| https://github.com/laurent22/joplin | Not Archived |
| https://github.com/akarataev/gleam-ios | Not Archived |
| https://github.com/julianschiavo/Playerly | Not Archived |
| https://github.com/Augustyniak/FileExplorer | Not Archived |
| https://github.com/emredurukn/betcalsa | Not Archived |
| https://github.com/tapmoko/typestyle | Not Archived |
| https://github.com/catrobat/catty | Not Archived |
| https://github.com/kuglee/TermiWatch | Not Archived |
| https://github.com/Karambirov/GitHubSearch | Not Archived |
| https://github.com/k-lpmg/GiTiny | Not Archived |
| https://github.com/dkhamsing/open-source-ios-apps/blob/master/LATEST.md | Not Archived |
| https://github.com/nicklockwood/Swiftenstein | Not Archived |
| https://github.com/tinode/ios | Not Archived |
| https://github.com/home-assistant/iOS | Not Archived |
| https://github.com/LumingYin/PDFToKeynote-iOS | Archived |
| https://github.com/Dimillian/MovieSwiftUI | Not Archived |
| https://github.com/keepassium/KeePassium | Not Archived |
| https://github.com/horizontalsystems/unstoppable-wallet-ios | Not Archived |
| https://github.com/automat-berlin/afone/ | Not Archived |
| https://github.com/confirmedcode/lockdown-ios | Not Archived |
| https://github.com/groue/GRDBCombine | Archived |
| https://github.com/flappy-royale/flappy-royale | Not Archived |
| https://github.com/Neko3000/Iris.iOS | Not Archived |
| https://github.com/Haptic-Apps/Slide-iOS | Archived |
| https://github.com/nsoojin/BookStore-iOS | Not Archived |
| https://github.com/strongbox-password-safe/Strongbox | Not Archived |
| https://github.com/mkhrapov/sansumoku | Archived |
| https://github.com/s-s/dnscloak | Not Archived |
| https://github.com/passepartoutvpn/passepartout | Not Archived |
| https://github.com/altstoreio/AltStore | Not Archived |
| https://github.com/gdombiak/OctoPod | Not Archived |
| https://github.com/tirupati17/giphy-mvvm-swift | Not Archived |
| https://github.com/tirupati17/contacts-mvp-swift | Not Archived |
| https://github.com/woocommerce/woocommerce-ios | Not Archived |
| https://github.com/AlphaWallet/alpha-wallet-ios | Not Archived |
| https://github.com/exantech/exa-wallet-ios | Not Archived |
| https://github.com/mecid/swiftui-recipes-app | Not Archived |
| https://github.com/igravitystudios/matchimals.fun | Not Archived |
| https://github.com/CoyoteLab/Studies-Siri-Shortcut-iOS-13 | Not Archived |
| https://github.com/mkhrapov/ultimate-peg-solitaire | Archived |
| https://github.com/triangledraw/TriangleDraw-iOS | Not Archived |
| https://github.com/Dimillian/OSRSUI | Not Archived |
| https://github.com/unixzii/SwiftUI-2048 | Not Archived |
| https://github.com/emoncms/emoncms-ios | Not Archived |
| https://github.com/alfianlosari/CoronaVirusTrackerSwiftUI | Not Archived |
| https://github.com/Ranchero-Software/NetNewsWire | Not Archived |
| https://github.com/MhdHejazi/CoronaTracker | Not Archived |
| https://github.com/MartinStamenkovski/LibraryGenesis | Not Archived |
| https://github.com/suicidesafetyplan/safetyplan-ios | Not Archived |
| https://github.com/deltachat/deltachat-ios | Not Archived |
| https://github.com/ColdGrub1384/LibTerm | Not Archived |
| https://github.com/soroushchehresa/iran-coronavirus | Archived |
| https://github.com/KhaosT/open-apollo | Not Archived |
| https://github.com/dkhamsing/covid19.swift | Not Archived |
| https://github.com/nploi/corona_tracker | Not Archived |
| https://github.com/dopebase/messenger-iOS-chat-swift-firestore | Not Archived |
| https://github.com/rrroyal/Harbour | Not Archived |
| https://github.com/manolosavi/xFonts | Not Archived |
| https://github.com/OpenASL/Fingerspelling-iOS | Not Archived |
| https://github.com/fromkk/FreeTimePicker | Not Archived |
| https://github.com/podverse/podverse-rn | Not Archived |
| https://github.com/iKenndac/Tofu | Not Archived |
| https://github.com/Jigsaw-Code/outline-apps | Not Archived |
| https://github.com/carson-katri/reddit-swiftui | Not Archived |
| https://github.com/pedrommcarrasco/ARbusters | Not Archived |
| https://github.com/devxoul/SwiftUITodo | Not Archived |
| https://github.com/Dimillian/ACHNBrowserUI | Not Archived |
| https://github.com/marty-suzuki/GitHubSearchWithSwiftUI | Not Archived |
| https://github.com/netguru/baby-monitor-client-ios | Archived |
| https://github.com/msal4/royal_news | Not Archived |
| https://github.com/fossasia/open-event-organizer-ios | Not Archived |
| https://github.com/VamshiIITBHU14/FakeFBWall | Not Archived |
| https://github.com/CrunchyBagel/TracePrivately | Not Archived |
| https://github.com/chuongtrh/palette-from-image | Not Archived |
| https://github.com/soapyigu/Swift-30-Projects | Not Archived |
| https://github.com/lucaslimapoa/NewsAPISwift | Not Archived |
| https://github.com/gtokman/Restaurant-Viewing-App | Not Archived |
| https://github.com/HassanElDesouky/VoiceMemosClone | Archived |
| https://github.com/dkhamsing/news | Not Archived |
| https://github.com/objcio/app-architecture | Not Archived |
| https://github.com/alfianlosari/SwiftUI-MovieDB | Not Archived |
| https://github.com/aranja/rakning-c19-app | Not Archived |
| https://github.com/covid19cz/erouska-ios | Archived |
| https://github.com/MohGovIL/hamagen-react-native | Not Archived |
| https://github.com/theindianappguy/FlutterNewsApp | Not Archived |
| https://github.com/alfianlosari/SwiftUICDExpenseTrackerCompleted | Not Archived |
| https://github.com/alfianlosari/CoronaVirusTrackerFlutter | Not Archived |
| https://github.com/Clean-Swift/CleanStore | Not Archived |
| https://github.com/rodydavis/gmail_clone | Not Archived |
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
| https://github.com/scalefocus/virusafe-ios | Not Archived |
| https://github.com/V8tr/InfiniteListSwiftUI | Not Archived |
| https://github.com/ProteGO-Safe/ios | Not Archived |
| https://github.com/fimuxd/BringMyOwnBeer- | Not Archived |
| https://github.com/rileytestut/Clip | Not Archived |
| https://github.com/airbnb/HorizonCalendar | Not Archived |
| https://github.com/leavenstee/InstaFake-Swift-UI | Not Archived |
| https://github.com/jhatin94/tempatlas-swiftui | Not Archived |
| https://github.com/albertopeam/Podcasts | Not Archived |
| https://github.com/rajdeep/proton | Not Archived |
| https://github.com/ProtonMail/ios-mail | Not Archived |
| https://github.com/SchwiftyUI/NewsApiApp | Not Archived |
| https://github.com/donbytyqi/PapersSwiftUI | Not Archived |
| https://github.com/ThasianX/DivRise | Not Archived |
| https://github.com/ThasianX/SpotifyRadar | Not Archived |
| https://github.com/chris-swift-dev/Beers | Not Archived |
| https://github.com/StephenMcMillan/Dub-Dub-Do | Not Archived |
| https://github.com/antranapp/IndieApps | Not Archived |
| https://github.com/Chubby-Apps/SafeTimer | Archived |
| https://github.com/LASER-Yi/SwiftUI-APOD | Not Archived |
| https://github.com/ViniciusDeep/Revill | Archived |
| https://github.com/Benetos/Mamoot | Not Archived |
| https://github.com/dkhamsing/listapp.ios | Not Archived |
| https://github.com/invoiceninja/admin-portal | Not Archived |
| https://github.com/dempseyatgithub/MemeMaker | Not Archived |
| https://github.com/molcik/swiftui-elements | Not Archived |
| https://github.com/fulldecent/formant-analyzer | Not Archived |
| https://github.com/superarcswift/SwiftCommunity | Not Archived |
| https://github.com/NozeIO/NeoIRC | Not Archived |
| https://github.com/fulldecent/8-ball-answer | Not Archived |
| https://github.com/fulldecent/pizzaman | Not Archived |
| https://github.com/khuong291/Flutter-Movie | Not Archived |
| https://github.com/jordansinger/SwiftUI-Kit | Not Archived |
| https://github.com/surfstudio/StackOv | Not Archived |
| https://github.com/thestoneage/IDResistors | Not Archived |
| https://github.com/NavdeepSinghh/RxSwift_MVVM_Finished | Not Archived |
| https://github.com/bakkenbaeck/daylight-ios | Not Archived |
| https://github.com/vijaywargiya/Translate-SwiftUI | Not Archived |
| https://github.com/razeware/emitron-iOS | Archived |
| https://github.com/PangMo5/AniTime | Not Archived |
| https://github.com/atrinh0/sfsymbols | Not Archived |
| https://github.com/niazoff/Weather | Not Archived |
| https://github.com/simpledotorg/bp-passport | Not Archived |
| https://github.com/minvws/nl-covid19-notification-app-ios | Archived |
| https://github.com/ericlewis/ShoppingList | Not Archived |
| https://github.com/sbertix/Swiftagram | Not Archived |
| https://github.com/NathanFallet/MorpionTPE-iOS | Archived |
| https://github.com/heart/CarBode-Barcode-Scanner-For-SwiftUI | Not Archived |
| https://github.com/joreilly/BikeShare | Not Archived |
| https://github.com/eleev/swiftui-2048 | Not Archived |
| https://github.com/cds-snc/covid-alert-app | Archived |
| https://github.com/amahi/ios | Not Archived |
| https://github.com/CovidWorld/ios | Not Archived |
| https://github.com/jogendra/phimpme-iOS | Not Archived |
| https://github.com/kxvn-lx/Ghibliii | Not Archived |
| https://github.com/kxvn-lx/Kontax-Cam | Not Archived |
| https://github.com/MaisaMilena/MyAnimeList | Not Archived |
| https://github.com/rickwierenga/heartbeat-tutorials/tree/master/MultiplatformApp/ | Not Archived |
| https://github.com/rcaos/TVToday | Not Archived |
| https://github.com/MarcinusX/flutter_ui_challenge_flight_search | Not Archived |
| https://github.com/andrewcbancroft/BlogIdeaList-SwiftUI | Not Archived |
| https://github.com/bastienFalcou/Portfolio | Not Archived |
| https://github.com/onmyway133/Recipes | Not Archived |
| https://github.com/bluemix/tourism-demo | Not Archived |
| https://github.com/jesusrp98/spacex-go | Not Archived |
| https://github.com/Path-Check/safeplaces-dct-app | Not Archived |
| https://github.com/jogendra/gravityBlocks | Not Archived |
| https://github.com/kserko/CineReel | Not Archived |
| https://github.com/antranapp/SwiftUIMindBlowing | Not Archived |
| https://github.com/covidwatchorg/covidwatch-ios-en | Not Archived |
| https://github.com/Norbert515/BookSearch | Not Archived |
| https://github.com/Shabang-Systems/Condution | Not Archived |
| https://github.com/kodecocodes/swiftui-example-app-koober | Not Archived |
| https://github.com/camiloibarrayepes/AlamofireStarWarsExample | Not Archived |
| https://github.com/MDSADABWASIM/Toughest | Not Archived |
| https://github.com/ra1028/SwiftUI-Combine | Not Archived |
| https://github.com/mythxn/DesignCode-SwiftUI | Not Archived |
| https://github.com/dempseyatgithub/UnofficialSandwiches | Not Archived |
| https://github.com/inamiy/Harvest-SwiftUI-Gallery | Archived |
| https://github.com/stevenselcuk/Pomosh-iOS-watchOS | Not Archived |
| https://github.com/ivanvorobei/SwiftUI | Not Archived |
| https://github.com/TUM-Dev/Campus-iOS | Archived |
| https://github.com/kitasuke/SwiftUI-MVVM | Not Archived |
| https://github.com/CastIrony/Fivey | Not Archived |
| https://github.com/utmapp/UTM | Not Archived |
| https://github.com/atrinh0/buttoncraft | Not Archived |
| https://github.com/niazoff/Chat | Not Archived |
| https://github.com/appbrewery/Xylophone-iOS13 | Not Archived |
| https://github.com/BalestraPatrick/FlightUtilities | Not Archived |
| https://github.com/DerekSelander/yacd | Not Archived |
| https://github.com/timfraedrich/OutRun | Not Archived |
| https://github.com/nalexn/clean-architecture-swiftui | Not Archived |
| https://github.com/hbmartin/Directory-SwiftUI | Not Archived |
| https://github.com/fossasia/open-event-attendee-ios | Not Archived |
| https://github.com/crafterm/swiftui-app-switcher | Not Archived |
| https://github.com/YusukeHosonuma/SwiftUI-LifeGame | Not Archived |
| https://github.com/ukhsa-collaboration/covid-19-app-ios-ag-public | Archived |
| https://github.com/jogendra/technex-ios | Not Archived |
| https://github.com/rursache/ToDoList | Archived |
| https://github.com/Alfresco/alfresco-ios-app | Not Archived |
| https://github.com/hyperoslo/BarcodeScanner | Not Archived |
| https://github.com/nicklockwood/Chess | Not Archived |
| https://github.com/TheCodeMonks/NYTimes-iOS | Not Archived |
| https://github.com/meteochu/Blurry | Not Archived |
| https://github.com/phillfarrugia/appstore-clone | Not Archived |
| https://github.com/ibhavikmakwana/Fluttery-Filmy | Not Archived |
| https://github.com/steventroughtonsmith/files-ios | Not Archived |
| https://github.com/NiftyTreeStudios/Bean-Juice | Not Archived |
| https://github.com/victorpanitz/iOS-SortingAlgorithmsApp | Not Archived |
| https://github.com/appbrewery/Flash-Chat-iOS13 | Not Archived |
| https://github.com/elkiwy/KHabit | Not Archived |
| https://github.com/igorkulman/iOSSampleApp | Not Archived |
| https://github.com/MotionMobs/Sandwhich | Not Archived |
| https://github.com/cheeaun/hackerweb-native-2 | Not Archived |
| https://github.com/damoonrashidi/bitalarm | Not Archived |
| https://github.com/fimuxd/BringMyOwnBeer-Combine | Not Archived |
| https://github.com/AnderGoig/github-contributions-ios | Not Archived |
| https://github.com/hungps/flutter_pokedex | Not Archived |
| https://github.com/alfianlosari/SwiftUIAuthenticationCompleted | Not Archived |
| https://github.com/RedBrogdon/flutterflip | Not Archived |
| https://github.com/RadarCOVID/radar-covid-ios | Not Archived |
| https://github.com/ghewgill/puzzles | Not Archived |
| https://github.com/nerdsupremacist/CovidUI | Not Archived |
| https://github.com/Dimillian/MortyUI | Not Archived |
| https://github.com/jonaspoxleitner/minimalistic_push | Not Archived |
| https://github.com/JohnYezub/NewsFeed_SwiftUI_MVVM | Not Archived |
| https://github.com/trentpiercy/trace | Not Archived |
| https://github.com/securityfirst/Umbrella_ios | Not Archived |
| https://github.com/pietrocaselani/CouchTracker | Not Archived |
| https://github.com/MaximeHeckel/sunshine-weather-app | Not Archived |
| https://github.com/christianampe/film-ios | Not Archived |
| https://github.com/vinhnx/Clendar | Not Archived |
| https://github.com/Neko3000/Monotone | Not Archived |
| https://github.com/87kangsw/GitTime | Not Archived |
| https://github.com/kyledold/WordOfTheDay | Not Archived |
| https://github.com/jordansinger/lil-news-app | Not Archived |
| https://github.com/jpsim/ZenTuner | Not Archived |
| https://github.com/MSzalek-Mobile/weight_tracker | Not Archived |
| https://github.com/appbrewery/BMI-Calculator-iOS13 | Not Archived |
| https://github.com/FranckNdame/swiftui.builds | Not Archived |
| https://github.com/aaronoe/FlutterCinematic | Not Archived |
| https://github.com/StewartLynch/iOS-14-Widget | Not Archived |
| https://github.com/venkatasg/DeTeXt | Not Archived |
| https://github.com/appcoda/TextScanner | Not Archived |
| https://github.com/ExistOrLive/GithubClient | Not Archived |
| https://github.com/metabolist/metatext | Archived |
| https://github.com/pointfreeco/isowords | Not Archived |
| https://github.com/jtsaeed/Hour-Blocks | Not Archived |
| https://github.com/nathanborror/logger | Not Archived |
| https://github.com/NathanFallet/OCaml | Not Archived |
| https://github.com/nemecek-filip/CompositionalDiffablePlayground.ios | Not Archived |
| https://github.com/ByCyril/iSpy-Game | Not Archived |
| https://github.com/ivirtex/networkarch-old | Not Archived |
| https://github.com/kgellci/Area51 | Not Archived |
| https://github.com/CovidTrackerFr/vitemadose-ios | Not Archived |
| https://github.com/alfianlosari/ImageFilterSwiftUICompleted | Not Archived |
| https://github.com/mullvad/mullvadvpn-app | Not Archived |
| https://github.com/BurntCaramel/CollectedApp | Not Archived |
| https://github.com/richardtop/CalendarApp | Not Archived |
| https://github.com/admin-ch/CovidCertificate-App-iOS | Archived |
| https://github.com/chanify/chanify-ios | Not Archived |
| https://github.com/zzanehip/The-OldOS-Project | Not Archived |
| https://github.com/nikitamounier/tapit-app | Not Archived |
| https://github.com/oblador/hush | Not Archived |
| https://github.com/microdotblog/microblog-ios | Archived |
| https://github.com/GroupeMINASTE/FMobile-iOS | Archived |
| https://github.com/onl1ner/BarcodeScanner | Not Archived |
| https://github.com/soramitsu/fearless-iOS | Not Archived |
| https://github.com/EhPanda-Team/EhPanda | Not Archived |
| https://github.com/3003h/Eros-FE | Not Archived |
| https://github.com/TCNCoalition/tcn-client-ios | Not Archived |
| https://github.com/XKCDY/app | Not Archived |
| https://github.com/Stop-COVID-19-Croatia/stopcovid19-ios | Not Archived |
| https://github.com/Blakexx/CryptoTracker | Not Archived |
| https://github.com/THLfi/koronavilkku-ios | Archived |
| https://github.com/roughike/inKino | Not Archived |
| https://github.com/philipturner/ar-multipendulum | Not Archived |
| https://github.com/AnthonyH93/GoCycling | Not Archived |
| https://github.com/woxtu/SwiftUI-HackerNews | Not Archived |
| https://github.com/JosephDuffy/Overamped | Not Archived |
| https://github.com/arnoappenzeller/PiPifier | Not Archived |
| https://github.com/Person2099/HTTPS-Responses | Not Archived |
| https://github.com/jazzychad/iCloudCoreDataStarter | Not Archived |
| https://github.com/TICESoftware/tice-ios | Not Archived |
| https://github.com/DreamingInBinary/Custom-ViewController-Transitions | Not Archived |
| https://github.com/MrKai77/Binary-Clock-iOS | Not Archived |
| https://github.com/ProtonVPN/ios-mac-app | Not Archived |
| https://github.com/jeffreybergier/Hipstapaper | Not Archived |
| https://github.com/pia-foss/mobile-ios | Not Archived |
| https://github.com/Infomaniak/ios-kDrive | Not Archived |
| https://github.com/ppy/osu | Not Archived |
| https://github.com/rainbow-me/rainbow | Not Archived |
| https://github.com/denoni/SpotifyClone | Not Archived |
| https://github.com/mitchtabian/Food2Fork-KMM | Not Archived |
| https://github.com/project-violet/violet | Not Archived |
| https://github.com/DaidoujiChen/Dai-Hentai | Not Archived |
| https://github.com/touchlab/DroidconKotlin | Not Archived |
| https://github.com/jareksedy/Elseweather | Not Archived |
| https://github.com/kolplattformen/skolplattformen | Not Archived |
| https://github.com/joreilly/StarWars | Not Archived |
| https://github.com/AnupAmmanavar/Mvi-SwiftUI | Not Archived |
| https://github.com/Dimillian/GrailerApp | Not Archived |
| https://github.com/peterfriese/SwiftUI-Concurrency-Essentials | Not Archived |
| https://github.com/ntnhon/Random-SwiftUI | Not Archived |
| https://github.com/MaikCL/PKDex-iOS | Not Archived |
| https://github.com/mongodb-developer/BlackJackTrainer | Archived |
| https://github.com/scribe-org/Scribe-iOS | Not Archived |
| https://github.com/jordansinger/lil-wallet | Not Archived |
| https://github.com/almormd/Splito | Not Archived |
| https://github.com/atrinh0/spiro | Not Archived |
| https://github.com/atrinh0/covid19 | Not Archived |
| https://github.com/joreilly/WordMasterKMP | Not Archived |
| https://github.com/peterfriese/MakeItSo | Not Archived |
| https://github.com/ecrichlow/LootRaideriOS_OS | Not Archived |
| https://github.com/ChoiysApple/My-Little-Popcat | Not Archived |
| https://github.com/draese/TwitterSentiment | Not Archived |
| https://github.com/londonappbrewery/bmi-calculator-flutter | Not Archived |
| https://github.com/jellyfin/Swiftfin | Not Archived |
| https://github.com/willowtreeapps/vocable-ios | Not Archived |
| https://github.com/niochat/nio | Not Archived |
| https://github.com/ericlewis/DeltaUI | Not Archived |
| https://github.com/Thomvis/Construct | Not Archived |
| https://github.com/shameemreza/critterclan | Not Archived |
| https://github.com/gematik/E-Rezept-App-iOS | Not Archived |
| https://github.com/AnthonyH93/HexaCalc | Not Archived |
| https://github.com/twtstudio/WePeiYang-iOS-Everest | Not Archived |
| https://github.com/Livinglist/Hacki | Not Archived |
| https://github.com/fatih-gursoy/Projector | Not Archived |
| https://github.com/cagnulein/qdomyos-zwift | Not Archived |
| https://github.com/chFlorian/DesignRemakes | Not Archived |
| https://github.com/TheCodeTraveler/GitTrends | Not Archived |
| https://github.com/kudoleh/iOS-Clean-Architecture-MVVM | Not Archived |
| https://github.com/DeluxeAlonso/UpcomingMovies | Not Archived |
| https://github.com/AnthonyH93/NHLTracker | Not Archived |
| https://github.com/kudoleh/iOS-Modular-Architecture | Not Archived |
| https://github.com/kalismeras61/flutter_wallet_ui | Not Archived |
| https://github.com/theankurkedia/NewsBuzz | Not Archived |
| https://github.com/vincode-io/Zavala | Not Archived |
| https://github.com/StewartLynch/Homescreen-Quick-Actions | Not Archived |
| https://github.com/vincode-io/Humboldt | Not Archived |
| https://github.com/MatthewWaller/MarkyMarkdown | Not Archived |
| https://github.com/Dimillian/The-Roundtable | Not Archived |
| https://github.com/Samaritan1011001/Trovami | Not Archived |
| https://github.com/jbarr21/flews | Not Archived |
| https://github.com/StewartLynch/UbiquitousKeyValue-Storage | Not Archived |
| https://github.com/aleksanderwozniak/deer | Not Archived |
| https://github.com/mastodon/mastodon-ios | Not Archived |
| https://github.com/nicklockwood/Swune | Not Archived |
| https://github.com/migueldeicaza/SwiftTermApp | Not Archived |
| https://github.com/jtrivedi/Apple-Cash-Animation | Not Archived |
| https://github.com/cinderella-project/iMast | Not Archived |
| https://github.com/yattee/yattee | Not Archived |
| https://github.com/linagora/Twake-Mobile | Not Archived |
| https://github.com/zulip/zulip-mobile | Not Archived |
| https://github.com/status-im/status-mobile | Not Archived |
| https://github.com/maxhumber/BreadBuddy | Not Archived |
| https://github.com/jasudev/FabulaItemsProvider | Not Archived |
| https://github.com/adamrushy/social-swiftui-app | Not Archived |
| https://github.com/aheze/RealityKitLaunchScreen | Not Archived |
| https://github.com/anikaseibezeder/SwiftUISpeedrunChallenge | Not Archived |
| https://github.com/threema-ch/threema-ios | Not Archived |
| https://github.com/jegnux/SwiftUICameraAppSpeedrunChallenge | Not Archived |
| https://github.com/betzerra/Fecapp | Not Archived |
| https://github.com/twostraws/simple-swiftui | Not Archived |
| https://github.com/apple/sample-food-truck | Not Archived |
| https://github.com/below/CarSample | Not Archived |
| https://github.com/ryanlintott/DefibHeart | Not Archived |
| https://github.com/netless-io/flat-ios | Not Archived |
| https://github.com/jordibruin/Swift-Charts-Examples | Not Archived |
| https://github.com/ChoiysApple/Asteroids-Plus | Not Archived |
| https://github.com/dejager/atmos | Not Archived |
| https://github.com/daneden/Solstice | Not Archived |
| https://github.com/almormd/Learning | Not Archived |
| https://github.com/daneden/Broadcast | Not Archived |
| https://github.com/philipcdavis/VariableType | Not Archived |
| https://github.com/daneden/Zeitgeist | Not Archived |
| https://github.com/neodroid/Parallax-Card-SwiftUI | Not Archived |
| https://github.com/aheze/ProgressGif | Not Archived |
| https://github.com/ryanlintott/OvercastDrawer | Not Archived |
| https://github.com/GetStream/purposeful-ios-animations | Not Archived |
| https://github.com/zehfernandes/wordnote | Not Archived |
| https://github.com/azamsharp/BudgetApp | Not Archived |
| https://github.com/joreilly/PeopleInSpace | Not Archived |
| https://github.com/joforsell/Cocktails | Not Archived |
| https://github.com/TelemetryDeck/TelemetryViewer | Not Archived |
| https://github.com/PaulaScholz/ApnsSample | Not Archived |
| https://github.com/pitt500/OnlineStoreTCA | Not Archived |
| https://github.com/firebase/friendlyeats-ios | Not Archived |
| https://github.com/jordibruin/Dynamic-Islands | Not Archived |
| https://github.com/SwiftyAlex/Samples | Not Archived |
| https://github.com/mdanics/fluttergram | Not Archived |
| https://github.com/bimsina/wallpaper | Not Archived |
| https://github.com/256Arts/Sprite-Cutter | Not Archived |
| https://github.com/256Arts/Sprite-Pencil | Not Archived |
| https://github.com/256Arts/Sprite-Catalog | Not Archived |
| https://github.com/256Arts/Sprite-Fonts | Not Archived |
| https://github.com/256Arts/My-Assets | Not Archived |
| https://github.com/256Arts/Symbol-Code | Not Archived |
| https://github.com/256Arts/Space-UI | Not Archived |
| https://github.com/fatih-gursoy/Cuisiner | Not Archived |
| https://github.com/abdorizak/Expense-Tracker-App | Not Archived |
| https://github.com/VAnsimov/MVI-SwiftUI | Not Archived |
| https://github.com/chockenberry/NowPlayingPlus | Not Archived |
| https://github.com/Automattic/pocket-casts-ios | Not Archived |
| https://github.com/aheze/OpenFind | Not Archived |
| https://github.com/avdyushin/Velik | Not Archived |
| https://github.com/aheze/SwiftUICraft | Not Archived |
| https://github.com/drpeterrohde/MoodSnap | Not Archived |
| https://github.com/Dimillian/IceCubesApp | Not Archived |
| https://github.com/Piecelet/neodb-app | Not Archived |
| https://github.com/open-trackers/Gym-Routine-Tracker-Watch-App | Not Archived |
| https://github.com/ynagatomo/ImgGenSD2 | Not Archived |
| https://github.com/simonbengtsson/airdash | Not Archived |
| https://github.com/ldakhoa/GistHub | Not Archived |
| https://github.com/Sendeky/weatherkit-weather-app | Not Archived |
| https://github.com/mshll/Color-Way | Not Archived |
| https://github.com/ynagatomo/ARDiffMuseum | Not Archived |
| https://github.com/huggingface/swift-coreml-transformers | Not Archived |
| https://github.com/DreamingInBinary/Spend-Stack-Public | Not Archived |
| https://github.com/movingparts-io/Pow-Examples | Not Archived |
| https://github.com/ynagatomo/ARWallPicture | Not Archived |
| https://github.com/WezSieTato/ScanNow | Not Archived |
| https://github.com/jogboms/tailor_made | Not Archived |
| https://github.com/bimsina/notes-app | Not Archived |
| https://github.com/rayliverified/FlutterGames | Not Archived |
| https://github.com/rwema3/Space_Empires | Not Archived |
| https://github.com/HSEIreland/covid-tracker-app | Not Archived |
| https://github.com/jerald-jacob/Flutter-Apps | Not Archived |
| https://github.com/kevmoo/slide_puzzle | Not Archived |
| https://github.com/Sophiestication/Groceries | Not Archived |
| https://github.com/burhanrashid52/WhatTodo | Not Archived |
| https://github.com/CarGuo/gsy_github_app_flutter | Not Archived |
| https://github.com/Sophiestication/Tipulator | Not Archived |
| https://github.com/rwema3/Math-Matrix-App | Not Archived |
| https://github.com/ritwiktakkar/shorten_my_URL | Not Archived |
| https://github.com/Sophiestication/Articles | Not Archived |
| https://github.com/ritwiktakkar/WordDefiner | Not Archived |
| https://github.com/hamed8080/LeitnerBox | Not Archived |
| https://github.com/cocoa-mhlw/cocoa | Archived |
| https://github.com/nate-parrott/web98 | Not Archived |
| https://github.com/xpavle00/Habo | Not Archived |
| https://github.com/mehrankmlf/EasyCrypto | Not Archived |
| https://github.com/IvanBogdantsev/Toilet-Radar-Paris | Archived |
| https://github.com/Livinglist/ZCombinator | Not Archived |
| https://github.com/brittanyarima/Steps | Not Archived |
| https://github.com/nate-parrott/uhohlingo | Not Archived |
| https://github.com/bluesky-social/social-app | Not Archived |
| https://github.com/brittanyarima/Sketchy | Not Archived |
| https://github.com/brittanyarima/MovieDB | Not Archived |
| https://github.com/metal-by-example/learn-metal-cpp-ios | Not Archived |
| https://github.com/streetwriters/notesnook | Not Archived |
| https://github.com/apple/sample-backyard-birds | Not Archived |
| https://github.com/VladimirBrejcha/Rise | Not Archived |
| https://github.com/ProtonDriveApps/ios-drive | Not Archived |
| https://github.com/immich-app/immich | Not Archived |
| https://github.com/prof18/feed-flow | Not Archived |
| https://github.com/localsend/localsend | Not Archived |
| https://github.com/mikaelacaron/Basic-Car-Maintenance | Not Archived |
| https://github.com/DominatorVbN/DevSpotlight | Not Archived |
| https://github.com/rarfell/dimeApp | Not Archived |
| https://github.com/laevandus/OnDemandAPIKeyExample | Not Archived |
| https://github.com/tommyxchow/frosty | Not Archived |
| https://github.com/jtrivedi/Mesh-Transform-Animation | Not Archived |
| https://github.com/bcye/whathaveiread | Not Archived |
| https://github.com/kevinyou77/Swordfish | Not Archived |
| https://github.com/Sigil-Wen/Dream-with-Vision-Pro | Not Archived |
| https://github.com/barisozgenn/NetflixVisionPro | Not Archived |
| https://github.com/6/StonksPro | Not Archived |
| https://github.com/fabio914/BeatmapVisionPro | Not Archived |
| https://github.com/Sigil-Wen/VisionCraft | Not Archived |
| https://github.com/kjwamlex/SpatialDock | Not Archived |
| https://github.com/logseq/logseq | Not Archived |
| https://github.com/openopus-org/concertmaster_ios | Not Archived |
| https://github.com/sebjvidal/UICollectionView-Collapsible-Section-Demo | Not Archived |
| https://github.com/meggsila/EmployeeCheckin | Not Archived |
| https://github.com/gonchar/VisionProVacuumDemo | Not Archived |
| https://github.com/ml-explore/mlx-swift-examples | Not Archived |
| https://github.com/infinitepower18/Homepage-MobileSafari | Not Archived |
| https://github.com/apps-fab/exercism-app | Not Archived |
| https://github.com/sebjvidal/Apple-Music-UI-Demo | Not Archived |
| https://github.com/yichengchen/ATV-Bilibili-demo | Not Archived |
| https://github.com/ivan-magda/ios-demo | Not Archived |
| https://github.com/metal-by-example/metal-spatial-dynamic-mesh | Not Archived |
| https://github.com/bigjermaine/BetBudd | Not Archived |
| https://github.com/nate-parrott/tortellini | Not Archived |
| https://github.com/wvabrinskas/PokePal | Not Archived |
| https://github.com/c-villain/SneakerShop | Not Archived |
| https://github.com/simonoppowa/OpenNutriTracker | Not Archived |
| https://github.com/adamlyttleapps/OpenAI-Wrapper-SwiftUI | Not Archived |
| https://github.com/dl-alexandre/SymbolGrid | Not Archived |
| https://github.com/YusuFKaan48/PixelWeather | Not Archived |
| https://github.com/YusuFKaan48/News | Not Found |
| https://github.com/YusuFKaan48/NeuCalc | Not Archived |
| https://github.com/ivpn/ios-app | Not Archived |
| https://github.com/denissimon/iOS-MVVM-Clean-Architecture | Not Archived |
| https://github.com/denissimon/Cryptocurrency-Info | Not Archived |
| https://github.com/denissimon/distributed-model-training | Not Archived |
| https://github.com/XunMengWinter/PetNote-oss | Not Archived |
| https://github.com/joeldavidw/Chronos | Not Archived |
| https://github.com/mainframecomputer/fullmoon-ios | Not Archived |
| https://github.com/alexjlockwood/compose-multiplatform-2048 | Not Archived |
| https://github.com/Sage-Bionetworks/CardiorespiratoryFitness-iOS | Not Archived |
| https://github.com/adafruit/Basic-Chat | Not Archived |
| https://github.com/EmergeTools/hackernews | Not Archived |
| https://github.com/jaredwolff/swift-bluetooth-particle-rgb | Not Archived |
| https://github.com/nebs/hello-bluetooth | Not Archived |
| https://github.com/saulamsal/netflix-ui | Not Archived |
| https://github.com/Dimillian/IcySky | Not Archived |
| https://github.com/mikelikesdesign/SwiftUI-experiments | Not Archived |
| https://github.com/hishd/RicketyRick-iOS | Not Archived |
| https://github.com/hishd/SkyWizard-SwiftUI | Not Archived |
| https://github.com/chsxf/SKTetris | Not Archived |
| https://github.com/robertwtucker/kfinderapp-ios | Not Archived |
| https://github.com/pixelfed/pixelfed-rn | Not Archived |
| https://github.com/chunkyguy/PhotoApp | Not Archived |
| https://github.com/msasikanth/twine | Not Archived |
| https://github.com/awaseem/foqos | Not Archived |
| https://github.com/rileytestut/Delta | Not Archived |
| https://github.com/LIJI32/SameBoy | Not Archived |
| https://github.com/lionheart/Pushpin | Not Archived |
| https://github.com/amikhaylin/pompaddo | Not Archived |
| https://github.com/amake/orgro | Not Archived |
| https://github.com/Anuken/Mindustry | Not Archived |
| https://github.com/saber-notes/saber | Not Archived |
| https://github.com/onionshare/onionshare | Not Archived |
| https://github.com/csprasad/Mr-Tip | Not Archived |
| https://github.com/Visual-Studio-Coder/QR-Share-Pro | Not Archived |
| https://github.com/Visual-Studio-Coder/Recap | Not Archived |
| https://github.com/il1ane/StoicQuotes | Not Archived |
| https://github.com/MCJack123/craftos2 | Not Archived |
| https://github.com/duckduckgo/apple-browsers | Not Archived |
| https://github.com/basarsubasi/simplefitnessapp | Not Archived |

*Last updated: 2025-05-22 05:57:34 UTC*