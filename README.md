# The Pika's OSINT ToolBox ⚡️

![image](https://i.postimg.cc/Y0QYYG6h/detective-pika-dark.png)

## About ℹ️

Open Source Intelligence ([OSINT](https://en.wikipedia.org/wiki/Open-source_intelligence)) is the collection and analysis of data gathered from open sources to produce actionable intelligence. This carefully edited OSINT list won't be an endless list of links, but priority will be given to highly effective content (quality over quantity) and only services that can be used for free.

> \[!WARNING\]  
> While OSINT itself is not illegal, it is crucial to understand that the legality of specific OSINT activities heavily depends on how the information is obtained and used. You assume full and sole responsibility for all consequences of your actions. This includes, but is not limited to, any direct, indirect, incidental, or consequential damages.

#### Symbols

- ⚙️ _Executable Program_
- 🌐 _Website Tool_
- 💉 _Exploitable Dork/Page/API_
- 📜 _Userscript_
- 🤖 _AI Powered_
- 📚️ _Wiki/List Resource_

## Username 🏷️

- 💉 Multisite Nickname Search Dork _\~ multi-site nickname search_
```html
inurl:"<USERNAME>" (site:facebook.com | site:instagram.com | site:x.com | site:tiktok.com | site:linkedin.com | site:pinterest.com | site:reddit.com | site:tumblr.com | site:youtube.com | site:twitch.tv | site:stackoverflow.com | site:soundcloud.com) -inurl:videos -inurl:video -inurl:watch -inurl:status -inurl:post -inurl:posts -inurl:photo -inurl:/p/ -inurl:photos -inurl:reply -inurl:reel -inurl:reels -inurl:comment -inurl:comments -inurl:search -inurl:tag -inurl:?__d= -inurl:related_profiles -inurl:popular -inurl:hashtag -inurl:/?v=
```

- ⚙️ [sherlock](https://github.com/sherlock-project/sherlock) (🌐 [osint.rocks](https://osint.rocks/)) _\~ reverse username lookup_

```bash
sherlock 'username' --timeout 2
```

- ⚙️ [WhatsMyName](https://github.com/C3n7ral051nt4g3ncy/WhatsMyName-Python) (🌐 [whatsmyname.app](https://whatsmyname.app)) _\~ username scraper_

```bash
python whatsmyname.py -u 'username'
```
- 🌐 [whatsmynameapp.net](https://whatsmynameapp.net/) _\~ username scraper_

## Email ✉️

- 🌐 [metricsparrow.com](http://metricsparrow.com/toolkit/email-permutator) _\~ email permutator_
- 🌐 [seintpl.github.io/NAMINT](https://seintpl.github.io/NAMINT) _\~ email checker_
- 💉 Email Finder by Domain Dork ([top 100 email providers](https://rentry.co/top-100-email-providers)) _\~ email searcher_

```html
"<NAME>" "<SURNAME>" (intext:"@gmail.com" | intext:"@yahoo.com" | intext:"@hotmail.com" | intext:"@outlook.com"| intext:"@icloud.com")
```

- 🌐 [tools.emailhippo.com](https://tools.emailhippo.com/) _\~ email validator_
- 🌐 [minervaosint.com](https://minervaosint.com/) _\~ reverse email lookup_
- 🌐 [intelbase.is](https://intelbase.is/) _\~ reverse email lookup_
- 🌐 [behindtheemail.com](https://behindtheemail.com/) _\~ reverse email lookup_
- 🌐 [epieos.com](https://epieos.com/) _\~ reverse email lookup_
- ⚙️ [holehe](https://github.com/megadose/holehe) (🌐 [osint.rocks](https://osint.rocks/)) _\~ reverse email lookup_
```bash
holehe 'email@provider.com'
```
- ⚙️ [blackbird](https://github.com/p1ngul1n0/blackbird) (🌐 [osintcabal.org](https://osintcabal.org/livecenter/blackbird.html)) _\~ reverse email lookup_
```bash
blackbird -e 'email@provider.com'
```

- ⚙️ [ghunt](https://github.com/mxrch/GHunt) (🌐 [osint.rocks](https://osint.rocks/), 🌐 [gmail-osint](https://gmail-osint.activetk.jp/)) _\~ gmail parser_

## Phone 📞

- 🌐 [smsc.ru](https://smsc.ru/testhlr/) _\~ phone lookup_
- 🌐 [@TrueCalleRobot](https://t.me/TrueCalleRobot) _\~ phone caller lookup_
- ⚙️ [ignorant](https://github.com/megadose/ignorant) (🌐 [osint.rocks](https://osint.rocks/)) _\~ reverse phone lookup_

```bash
ignorant '<NUMBER>' --only-used
```
- 🌐 [wayp.com](https://www.wayp.com/) _\~ world white/yellow pages_


## Image 🖼️

- 🌐 [pimeyes.com](https://pimeyes.com/en) (📜 [unblur](https://greasyfork.org/en/scripts/531501)) _\~ reverse face search_ 🤖
- 🌐 [huggingface.co/FaceOnLive](https://huggingface.co/FaceOnLive/spaces) _\~ reverse face search_ 🤖
- 🌐 [tattoodo.com](https://www.tattoodo.com/tattoos) _\~ tattoo location lookup_
- 🌐 [images.google.com](https://images.google.com/) (🌐 [yandex.com](https://yandex.com/images "https://yandex.com/images?")) _\~ reverse image search_
- 🌐 [picdetective.com](https://picdetective.com/) _\~ reverse image search_ 🤖
- 🌐 [exifinfo.org](https://exifinfo.org) _\~ exif lookup_
- 🌐 [29a.ch](https://29a.ch/photo-forensics/#forensic-magnifier) _\~ image forensic_

## Social 👥

- 🌐 [cse.google.com](https://cse.google.com/cse?cx=029ffbc44aa3946cb) _\~ multi-social search_
- 💉 Multisocial Search Dork _\~ multi-social search_

```html
"<NAME>" "<SURNAME>" (site:facebook.com | site:x.com | site:instagram.com | site:tiktok.com) -inurl:videos -inurl:video -inurl:watch -inurl:status -inurl:post -inurl:posts -inurl:photo -inurl:/p/ -inurl:photos -inurl:reply -inurl:reel -inurl:reels -inurl:comment -inurl:comments -inurl:search -inurl:tag -inurl:?__d= -inurl:related_profiles -inurl:popular -inurl:hashtag -inurl:/?v= -inurl:public
```

- ⚙️ [instaloader](https://github.com/instaloader/instaloader) _\~ IG backup_
- 📜 [Instagram Followers/Following Scraper](https://greasyfork.org/en/scripts/527647) _\~ IG followe/rs_
- 📜 [Instagram Post Date and Location](https://greasyfork.org/en/scripts/527757) _\~ IG geotag+date ui_
- ⚙️ [instagram-location-search](https://github.com/bellingcat/instagram-location-search) _\~ IG location scraper_

```bash
instagram-location-search --cookies "<ig-cookie>" --lat "<lat>" --lng "<lng>" --json locs.json --map map.html
```

- 📜 [Instagram Threads Checker](https://greasyfork.org/en/scripts/526760) _\~ IG threads matcher_
- 🌐 [sowsearch.info](https://sowsearch.info/) _\~ FB searcher_
- 💉 Facebook Search Dorks _\~ FB info finder_

```html
"<NAME>" "<SURNAME>" ("lives in <PLACE>" | "from <PLACE>") site:facebook.com
```
```html
"<NAME>" "<SURNAME>" ("studied at <SCHOOL>" | "went to <SCHOOL>") site:facebook.com
```
```html
"<NAME>" "<SURNAME>" ("worked at <COMPANY>" | "works at <COMPANY>") site:facebook.com
```

- 🌐 [facebook.com/ads/library](https://www.facebook.com/ads/library/) _\~ FB/IG ads library_
- 🌐 [cse.google.com](https://cse.google.com/cse?cx=013991603413798772546:jyvyp2ppxma#gsc.tab=0) _\~ FB published images by keyword_
- 📜 [Facebook Profile ID Extractor](https://greasyfork.org/en/scripts/527377) _\~ FB id finder_

```html
https://www.facebook.com/profile.php?id=<PROFILEID>
```
- 📜 [X.com Profile Info Widget](https://greasyfork.org/en/scripts/562550) _\~ X advanced info_

- 🌐 [onlysearch.co](https://onlysearch.co/) _\~ OF searcher_
- 📜 [YouTube Channel ID Extractor](https://greasyfork.org/en/scripts/569563) _\~ YT id finder_
- 🌐 [mattw.io/youtube-metadata](https://mattw.io/youtube-metadata/) _\~ YT metadata parser_
- 🌐 [findyoutubevideo.thetechrobo.ca](https://findyoutubevideo.thetechrobo.ca/) _\~ YT private/removed parser_
- 🌐 [ytcomment.kmcat.uk](https://ytcomment.kmcat.uk) _\~ YT comments search_
- 🌐 [filmot.com](https://filmot.com/?searchManualSubs=0) _\~ YT global subtitles search_
- 🌐 [twitch-tools.rootonline.de](https://twitch-tools.rootonline.de/) _\~ TW followers/ing viewer_
- 🌐 [r00m101.com](https://r00m101.com/) _\~ Reddit profile analyzer_
- 🌐 [badoo-archive-collection](https://web.archive.org/collection-search/badoo.com) _\~ Badoo wayback db_
- 🌐 [strava.com/maps](https://www.strava.com/maps/) _\~ Stava global heatmap_

## Chat 💬

- 🌐 [vedbex.com](https://www.vedbex.com/) _\~ SKYPE mail/phone/ip_
- 🌐 [gatecord.com](https://gatecord.com/discord-id-lookup/) _\~ DISCORD lookup_
- 🌐 [hugonun.github.io](https://hugonun.github.io/discordid2date/) _\~ DISCORD creation time_
- 🌐 [discord.com](https://discord.com/servers) (🌐 [discord.me](https://discord.me/servers), 🌐 [disboard.org](https://disboard.org/) ) _\~ DISCORD server search_
- 🌐 [intelx.io](https://intelx.io/tools?tab=telegram) _\~ TG search_
- 🌐 [tgfind.org](https://tgfind.org/) _\~ TG channel search_
- 🌐 [telegram-archive-collection](https://web.archive.org/collection-search/telegram) _\~ TG wayback db_
- ⚙️ [telegram-phone-number-checker](https://github.com/bellingcat/telegram-phone-number-checker) _\~ TG lookup_

```bash
python telegram_phone_number_checker/main.py --phone-numbers '<NUMBER>' --download-profile-photos
```

- ⚙️ [telepathy](https://github.com/proseltd/Telepathy-Community) _\~ TG groups/channels lookup_

```bash
telepathy -t '<NICKNAME>' -c
```

- 🌐 [@fsta_bot_of_bot](https://t.me/fsta_bot_of_bot?start=010814D5EF7674617466) _\~ TG groups lookup_
- 🌐 [@creationdatebot](https://t.me/creationdatebot) _\~ TG registration lookup_
- 🌐 [@SangMata_beta_bot](https://t.me/SangMata_beta_bot) _\~ TG nick lookup_

## Gaming 🎮️

- 🌐 [xresolver.com](https://xresolver.com/) _\~ XBOX/PSN/GTA resolver_
- 🌐 [psnprofiles.com](https://psnprofiles.com/) _\~ PSN parser_
- 🌐 [xboxgamertag.com](https://xboxgamertag.com/) _\~ XBOX parser_
- 🌐 [epic-lookup.com](https://epic-lookup.com/) _\~ EPICGAMES parser_

## Location 🗺️

- 🌐 [geospy.net](https://geospy.net/en/geospy) (🌐 [whereisthisphoto.com](https://www.whereisthisphoto.com/), 🌐 [picarta.ai](https://picarta.ai/)) _\~ place finder_ 🤖
- 🌐 [overpass-ultra.trailsta.sh](https://overpass-ultra.trailsta.sh/) _\~ map advanced scripting_
- 💉 Gmaps Tracker by Gaia ID _\~ gmap tracker_

```html
https://www.google.com/maps/contrib/<GAIA-ID>
```

- ⚙️ [Weather2Geo](https://github.com/elliott-diy/Weather2Geo) _\~ reverse city finder by weather_

```bash
python main.py --time "2025-05-22 14:00" --condition "Mostly cloudy" --temp 18 --tolerance 1.0
```

- 🌐 [colab.research.google.com](https://colab.research.google.com/github/GalenReich/ShadowFinder/blob/main/ShadowFinderColab.ipynb) _\~ place finder by sun shadow_
- 🌐 [tubvsig-so2sat-vm1.srv.mwn.de](https://tubvsig-so2sat-vm1.srv.mwn.de/) _\~ global building info_
- 🌐 [pleper.com](https://pleper.com/index.php?do=tools&sdo=cid_converter) _\~ gmaps spots info_
- 🌐 [cse.google.com](https://cse.google.com/cse?cx=013991603413798772546:gjcdtyiytey#gsc.tab=0) (🌐 [cybdetective.com/webcamcse](https://cybdetective.com/webcamcse.html)) _\~ webcam finder_
- 🌐 [3wifi.dev](https://3wifi.dev/map.html) (🌐 [wigle.net](https://wigle.net/)) _\~ wifi wardriving map_
- 🌐 [firms.modaps.eosdis.nasa.gov](https://firms.modaps.eosdis.nasa.gov/map/) _\~ nasa fire map_
- 🌐 [plonkit.net](https://www.plonkit.net/guide) _\~ geoguesser wiki_
- 🌐 [geotips.net](https://geotips.net/) _\~ geoguesser wiki_
- 🌐 [geohints.com](https://geohints.com/) _\~ geoguesser objects wiki_
- 🌐 [cipher387.github.io](https://cipher387.github.io/venicle_number_search_toolbox/) _\~ car plate info_
- 🌐 [flightmapper.net](https://flightmapper.net/) _\~ flight tracking map_
- 🌐 [aerobasegroup.com](https://aerobasegroup.com/tail-number-lookup) _\~ flight number lookup_
- 🌐 [globe.airplanes.live](https://globe.airplanes.live/) _\~ live airplane map_
- 🌐 [marinetraffic.com](https://www.marinetraffic.com/) _\~ live ship map_

## General 📂

- 🌐 [intelx.io](https://intelx.io/tools?tab=general) _\~ multi-engine search_
- 💉 Localized Google Search ([ISO 3166-1 alpha-2 Table](https://gist.github.com/tadast/8827699)) _\~ search by country switching_

```html
https://www.google.com/search?q=<ANY>+<DORK>+<OR>+<CUSTOM>+<SEARCH>&cr=<ALPHA-2-COUNTRY-CODE>
```

- 💉 Docs Search Dork _\~ general info gathering_

```html
"<NAME>" "<SURNAME>" "<CITY>" (filetype:pdf | filetype:doc | filetype:docx | filetype:odt | filetype:ods | filetype:odp | filetype:xls | filetype:xlsx | filetype:csv | filetype:txt | filetype:rtf | filetype:xml | filetype:ppt | filetype:pptx | filetype:key | filetype:zip | filetype:rar | filetype:7z | filetype:gz | filetype:log | filetype:json | filetype:audit | filetype:trace | filetype:debug | filetype:out | filetype:err)
```

- 🌐 [cybdetective.com/pastebin](https://cybdetective.com/pastebin.html) _\~ pastebin search_
- 🌐 [cybdetective.com/codesearch](https://cybdetective.com/codesearch.html) _\~ repos search_

- 💉 Github User Info _\~ github user lookup_

```html
https://api.github.com/users/<NICKNAME>
```
- 🌐 [ghintel.secrets.ninja](https://ghintel.secrets.ninja/) _\~ github email commits finder_
- ⚙️ Hidden Metadata In Local Repos _\~ repos email/nickname finder_

```bash
git log --pretty=format:"[ AUTHOR-EMAIL:%ae | AUTHOR-NICK:%an ][ COMMITTER-EMAIL:%ce | COMMITTER-NICK:%cn ][ DATE:%aD ]"
```
- ⚙️ [trufflehog](https://github.com/trufflesecurity/trufflehog) _\~ repo secret finder_

```bash
trufflehog git "https://github.com/<USER>/<REPO>"
```


- 🌐 [ispyconnect.com](https://www.ispyconnect.com/docs/ispy/default-camera-passwords) _\~ ipcam passwords list_
- 🌐 [cybdetective.com/osintmap](https://cybdetective.com/osintmap/) _\~ world institutions directory_
- 🌐 [osintguru.azurewebsites.net](https://osintguru.azurewebsites.net/countries/) _\~ world institutions directory_
- 🌐 [aleph.occrp.org](https://aleph.occrp.org/) _\~ investigation documents dataset_
- 🌐 [ean-search.org](https://www.ean-search.org/) _\~ multi-barcode lookup_
- 🌐 [iknowwhatyoudownload.com](https://iknowwhatyoudownload.com/) _\~ reverse torrents lookup_

## Corporate 💼

- 🌐 [dnb.com](https://www.dnb.com/business-directory.html) _\~ company lookup_
- 🌐 [skymem.info](https://www.skymem.info/) _\~ company email lookup_
- 🌐 [lei.info](https://lei.info/) _\~ legal company identifier_
- 🌐 [opencorporates.com](https://opencorporates.com/) _\~ open corporate database_
- 💉 Company Employee Dork _\~ linkedin company users_

```html
site:linkedin.com inurl:in “<COMPANY>”
```

## Hosting 🕸️

- 🌐 [sitereport.netcraft.com](https://sitereport.netcraft.com/) _\~ website parser_
- 🌐 [centralops.net](https://centralops.net/) _\~ whois lookup_
- 🌐 [whoxy.com/archive](https://www.whoxy.com/archive.php) _\~ whois DB history parser_
- 🌐 [whois.easycounter.com](http://whois.easycounter.com/) _\~ whois DB history parser_
- 🌐 [whoisfreaks.com](https://whoisfreaks.com/tools/user/whois/reverse/search) _\~ whois DB history parser_
- 📜 [Reverse Whoxy Domain Status](https://greasyfork.org/en/scripts/541732) _\~ whois website checker_
- 🌐 [dnsdumpster.com](https://dnsdumpster.com/) _\~ reverse website location lookup_
- 🌐 [informationlaundromat.com](https://informationlaundromat.com/url-search) _\~ website metadata correlator_
- 🌐 [viewdns.info/iphistory](https://viewdns.info/iphistory/?domain) _\~ ip hosting history lookup_
- 🌐 [viewdns.info/reversens](https://viewdns.info/reversens/?ns) _\~ reverse dns lookup_
- 🌐 [viewdns.info/reverseip](https://viewdns.info/reverseip/) _\~ reverse ip lookup_
- 🌐 [host.io](https://host.io/) _\~ website to website lookup_
- 🌐 [osint.sh/adsense](https://osint.sh/adsense/) _\~ reverse adsense lookup_
- 🌐 [osint.sh/analytics](https://osint.sh/analytics/) _\~ reverse google analytics lookup_
- 🌐 [crt.sh](https://crt.sh/) _\~ certificate analysis_
- 🌐 [shodan.io](https://www.shodan.io/) (🌐 [fofa.info](https://en.fofa.info/), 🌐 [platform.censys.io](https://platform.censys.io/search)) _\~ host scanner_
- ⚙️ [CloudRip](https://github.com/moscovium-mc/CloudRip) _\~ ip behind cloudflare by subdomain enum_
```bash
python cloudrip.py <SITE> -t 50
```
- ⚙️ [wayBackLister](https://github.com/anmolksachan/wayBackLister) _\~ wayback directory bruteforcer_

```bash
python waybacklister.py -d <SITE> -t 50
```

- ⚙️ [robofinder](https://github.com/Spix0r/robofinder) _\~ wayback robots.txt parser_
```bash
robofinder -u <SITE> -t 50 -c
```

- ⚙️ [subcat](https://github.com/duty1g/subcat) (🌐 [osintcabal.org](https://osintcabal.org/livecenter/subcat.html)) _\~ subdomains finder_
```bash
subcat -d hackerone.com --sc --title --tech --up
```

- 💉 Subdomains Finder _\~ subdomains finder_
```html
https://api.hackertarget.com/hostsearch/?q=<WEBSITE>
```
```html
https://www.virustotal.com/gui/domain/<WEBSITE>/relations
```

- 💉 Wayback Pages Finder (CDX API) _\~ wayback pages enumerator_
```html
https://web.archive.org/cdx/search/cdx?url=<WEBSITE>/path/page.php?<PARAMETER>=* [&to=<YYYYMMDD>&from=<YYYYMMDD>]
```

- 💉 Wayback Hidden Domains/Files (CDX API) _\~ wayback pages enumerator_
```html
https://web.archive.org/cdx/search/cdx?url=*.<WEBSITE>&collapse=urlkey [&to=<YYYYMMDD>&from=<YYYYMMDD>]
```

- 💉 Wayback Files Filer (CDX API) _\~ wayback mimetype filter_
```html
https://web.archive.org/cdx/search/cdx?url=<WEBSITE>&filter=mimetype:text/javascript&collapse=urlkey [&to=<YYYYMMDD>&from=<YYYYMMDD>]
```

- 💉 Gravatar API _\~ gravatar lookup_

```html
https://en.gravatar.com/<MD5_HASH_OF_EMAIL>.json
```

## Knocking 🚪

- 🌐 [instagram.com](https://www.instagram.com/accounts/password/reset/) (🏷️->✉️📞) _\~ account knocker_
- 🌐 [facebook.com](https://www.facebook.com/login/identify/?ctx=recover) (🏷️->✉️📞) _\~ account knocker_
- 🌐 [x.com](https://x.com/account/begin_password_reset) (🏷️->✅) _\~ account validator_
- 🌐 [accounts.google.com](https://accounts.google.com/) (🏷️->✉️) _\~ account knocker_
- 🌐 [login.yahoo.com](https://login.yahoo.com/) (🏷️✉️📞->✉️📞) _\~ account knocker_
- 🌐 [iforgot.apple.com](https://iforgot.apple.com/password/verify/appleid) (🏷️->✉️📞) _\~ account knocker_
- 🌐 [account.live.com](https://account.live.com/ResetPassword.aspx) (🏷️✉️📞->📞✉️) _\~ account knocker_
- 🌐 [account.samsung.com](https://account.samsung.com/accounts/v1/SAMSUNGCA/findId) (🏷️->✉️) _\~ account knocker_
- 🌐 [snapchat.com](https://www.snapchat.com/) (🏷️✉️📞->✅) _\~ account validator_
- 🌐 [discord.com](https://discord.com/login/) (🏷️✉️📞->✅) _\~ account validator_
- 🌐 [identity.flickr.com](https://identity.flickr.com/forgot-password) (✉️->✅) _\~ account validator_
- 🌐 [pinterest.com](https://www.pinterest.com/password/reset) (🏷️->✅) _\~ account validator_
- 🌐 [accounts.spotify.com](https://accounts.spotify.com/it/login) (✉️->✅) _\~ account validator_
- 🌐 [epicgames.com](https://www.epicgames.com/id/login/forgot-password) (✉️->✅) _\~ account validator_
- 🌐 [airbnb.it](https://www.airbnb.it/) (✉️📞->✅) _\~ account validator_
- 🌐 [github.com](https://github.com/password_reset) (✉️->✅) _\~ account validator_
- 🌐 [lastpass.com](https://lastpass.com/recover.php) (✉️->✅) _\~ account validator_
- 🌐 [paypal.com](https://www.paypal.com/authflow/email-recovery) (✉️->✅) _\~ account validator_
- 🌐 [accounts.binance.com](https://accounts.binance.com/en/security/user/reset-password) (📞✉️->✅) _\~ account validator_

## Breaches 🏴‍☠️

- 🌐 [databreach.com](https://databreach.com/) _\~ breach checker_
- 🌐 [haveibeenpwned.com](https://haveibeenpwned.com/) _\~ breach checker_
- 🌐 [dehashed.com](https://www.dehashed.com/) _\~ breach checker_
- 🌐 [breach.vip](https://breach.vip/) _\~ breach searcher_
- 🌐 [idleakcheck.com](https://idleakcheck.com/search) _\~ NPD searcher_
- 🌐 [bf.based.re](https://bf.based.re/) _\~ breachforums lookup_
- 🌐 [sizeof.cat](https://archive.is/Rbz1Y) (🌐 [zerobin.net](https://zerobin.net/?63b7dfdecb91df82#gXCNC9KV04IvisCuqawb5huGUTqAM1ymHaXNN/VvGq4=)) ⚠️ **your responsibility** _\~ breach torrents_
- 💉 Hudsonrock Cavalier API _\~ stealers email searcher_
```html
https://cavalier.hudsonrock.com/api/json/v2/osint-tools/search-by-email?email=<EXAMPLE@GMAIL.COM>
```
- 💉 Hudsonrock Cavalier API _\~ stealers username searcher_
```html
https://cavalier.hudsonrock.com/api/json/v2/osint-tools/search-by-username?username=<USERNAME>
```
- 💉 Hudsonrock Cavalier API _\~ stealers ip searcher_
```html
https://cavalier.hudsonrock.com/api/json/v2/osint-tools/search-by-ip?ip=<127.0.0.1>
```

## FlowCharts 💡

#### Name
![Name](https://i.postimg.cc/Y21bJC2C/image.png)
#### Username
![Username](https://i.postimg.cc/YqdfH45S/image.png)
#### Email
![Email](https://i.postimg.cc/MKpVd6v5/image.png)
#### Phone
![Phone](https://i.postimg.cc/KzQ4MTr3/image.png)
#### Domain
![Domain](https://i.postimg.cc/C10fDSy0/image.png)
#### Location
![Location](https://i.postimg.cc/QdWByHhD/image.png)

## Resources 📚️

- 📚️ [Bellingcat's Online Investigation Toolkit](https://bellingcat.gitbook.io/toolkit)
- 📚️ [Malfrat's OSINT Map](https://map.malfrats.industries/)
- 📚️ [OSINT Framework](https://osintframework.com/)
- 📚️ [Cyber Detective's OSINT tools collection](https://cipher387.github.io/osint_stuff_tool_collection/)
- 📚️ [Cyber Detective's Dorks-collection-list](https://github.com/cipher387/Dorks-collections-list?tab=readme-ov-file)
- 📚️ [IntelTechniques Search Tools](https://inteltechniques.com/tools/)
- 📚️ [Awesome OSINT](https://github.com/jivoi/awesome-osint)
- 📚️ [Awesome Google Dorks](https://github.com/Tobee1406/Awesome-Google-Dorks)
- 📚️ [Google Hacking Database ExploitDB](https://www.exploit-db.com/google-hacking-database)

![image](https://api.star-history.com/svg?repos=passthesh3ll/The-Pika-s-OSINT-ToolBox&theme=dark)

## Contact 📨
For contributions and reports: **pikaosint@proton.me**

## Donation 💛

If you want to support my research you can donate **Monero** (XMR).  
All donations will be used to buy new OSINT learning materials and tools to improve this project.  
Thank you!

<img width="200" height="200" alt="image" src="https://i.postimg.cc/SNwMj0qM/image.png" />

**XMR**:
```bash
87QKLLGi9nNc9G8K4Rg4aAVipmmixNywN4MgR3UzF3Z5YrgZn74UNFVRZpss4G63eHJbhD9N8tVKoZCKcKCGZyh8M6AUkSb
```
