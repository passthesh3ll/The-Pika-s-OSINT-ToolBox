# The Pika's OSINT ToolBox ⚡️

![image](https://i.postimg.cc/NfRjWRNj/pika-osint-circle.png)

## Description

Open Source Intelligence ([OSINT](https://en.wikipedia.org/wiki/Open-source_intelligence)) is the collection and analysis of data gathered from open sources to produce actionable intelligence. This carefully edited OSINT list won't be an endless list of links, but priority will be given to highly effective content (quality over quantity) and only services that can be used for free.

> \[!WARNING\]  
> While OSINT itself is not illegal, it is crucial to understand that the legality of specific OSINT activities heavily depends on how the information is obtained and used. You assume full and sole responsibility for all consequences of your actions. This includes, but is not limited to, any direct, indirect, incidental, or consequential damages.

#### Symbols

- ⚙️ *Executable Program*
- 🌐 *Website Tool*
- 💉 *Exploitable Dork/Page/API*
- 📜 *Userscript*
- 📚️ *Wiki/List Resource*

## Username 🏷️

- ⚙️ [maigret](https://github.com/soxoj/maigret) (🌐 [osint.rocks](https://osint.rocks/)) *\~ username checker*

```bash
maigret 'username' --html
```

- 🌐 [whatsmyname.app](https://whatsmyname.app) *\~ username/accounts scraper*
- 🌐 [user-searcher.com](https://www.user-searcher.com/) *\~ accounts finder*

## Email ✉️

- 🌐 [metricsparrow.com](http://metricsparrow.com/toolkit/email-permutator) *\~ email permutator*
- 🌐 [seintpl.github.io/NAMINT](https://seintpl.github.io/NAMINT) *\~ gravatar email bruteforcer*
- 💉 Email Finder by Domain Dork ([top 100 email providers](https://rentry.co/top-100-email-providers)) *\~ email finder*

```html
"<NAME>" "<SURNAME>" (intext:"@gmail.com" | intext:"@yahoo.com" | intext:"@hotmail.com" | intext:"@outlook.com"| intext:"@icloud.com")
```

- 💉 Email Finder by Website Dork *\~ email finder*

```html
 site:<WEBSITE> (intitle:"email" | intitle:"contact" | intitle:"about")
```

- 🌐 [account.samsung.com](https://account.samsung.com/accounts/v1/SAMSUNGCA/findId) *\~ email finder*
- 🌐 [emailhippo.com](https://tools.emailhippo.com) *\~ email checker*
- ⚙️ [holehe](https://github.com/megadose/holehe) (🌐 [osint.rocks](https://osint.rocks/)) *\~ email registered accounts*

```bash
holehe 'email@provider.com'
```

- 🌐 [minervaosint.com](https://minervaosint.com/) *\~ email registered accounts*
- ⚙️ [ghunt](https://github.com/mxrch/GHunt) (🌐 [osint.rocks](https://osint.rocks/), 🌐 [gmail-osint](https://gmail-osint.activetk.jp/)) *\~ gmail parser*
- 🌐 [epieos.com](https://epieos.com/) *\~ email parser*
- 🌐 [castrickclues.com](https://castrickclues.com/) *\~ email parser*
- 🌐 [protonintel.profiler.me](https://protonintel.profiler.me/) *\~ protonmail parser*

## Phone 📞

- 🌐 [smsc.ru](https://smsc.ru/testhlr/) *\~ phone checker/parser*
- ⚙️ [phoneinfoga](https://github.com/sundowndev/phoneinfoga) *\~ phone parser*

```bash
phoneinfoga scan -n '<XX> <NUMBER>'
```

- ⚙️ [ignorant](https://github.com/megadose/ignorant) (🌐 [osint.rocks](https://osint.rocks/)) *\~ phone registered accounts*

```bash
ignorant '<NUMBER>' --only-used
```

## Image 🖼️

- 🌐 [pimeyes.com](https://pimeyes.com/en) (📜 [unblur](https://greasyfork.org/en/scripts/531501)) *\~ reverse face search \[AI\]*
- 🌐 [huggingface.co/FaceOnLive](https://huggingface.co/FaceOnLive/spaces) *\~ reverse face search \[AI\]*
- 🌐 [facecheck.id](https://facecheck.id/) *\~ reverse face search \[AI\]*
- 🌐 [tattoodo.com](https://www.tattoodo.com/tattoos) *\~ tattoo location lookup*
- 🌐 [images.google.com](https://images.google.com/) (🌐 [yandex.com](https://yandex.com/images "https://yandex.com/images?")) *\~ reverse image search*
- 🌐 [lenso.ai](https://lenso.ai/) (📜 [unblur](https://greasyfork.org/en/scripts/531499)) *\~ reverse image search \[AI\]*
- 🌐 [exifinfo.org](https://exifinfo.org) *\~ exif parser*
- 🌐 [29a.ch](https://29a.ch/photo-forensics/#forensic-magnifier) *\~ image forensic parser*

## Social 👥

- 🌐 [cse.google.com](https://cse.google.com/cse?cx=029ffbc44aa3946cb)  *\~ multi-social profile finder*
- 💉 Multisocial Search Dork *\~ multi-social profile finder*

```html
"<NAME>" "<SURNAME>" "<CITY>" (site:facebook.com | site:x.com | site:instagram.com | site:tiktok.com)
```

- 💉 Instagram Place Search *\~ IG place finder*

```html
inurl:"<PLACE>" site:instagram.com
https://www.instagram.com/explore/search/keyword/?q=<PLACE>
```

- ⚙️ [instaloader](https://github.com/instaloader/instaloader) *\~ IG backup*
- 📜 [Instagram Followers/Following Scraper](https://greasyfork.org/en/scripts/527647) *\~ IG followe/rs*
- 📜 [Instagram Post Date and Location](https://greasyfork.org/en/scripts/527757) *\~ IG geotag+date ui*
- ⚙️ [instagram-location-search](https://github.com/bellingcat/instagram-location-search) *\~ IG location scraper*
```bash
instagram-location-search --cookies "<ig-cookie>" --lat "<lat>" --lng "<lng>" --json locs.json --map map.html
```
- 📜 [Instagram Threads Checker](https://greasyfork.org/en/scripts/526760) *\~ IG threads matcher*
- 🌐 [sowsearch.info](https://sowsearch.info/) *\~ FB searcher*
- 💉 Facebook Search Dorks *\~ FB info finder*

```html
"<NAME>" "<SURNAME>" ("lives in <PLACE>" | "from <PLACE>") site:facebook.com
"<NAME>" "<SURNAME>" ("studied at <SCHOOL>" | "went to <SCHOOL>") site:facebook.com
"<NAME>" "<SURNAME>" ("worked at <COMPANY>" | "works at <COMPANY>") site:facebook.com
```

- 🌐 [facebook.com/ads/library](https://www.facebook.com/ads/library/) *\~ FB/IG ads library*
- 🌐 [cse.google.com](https://cse.google.com/cse?cx=013991603413798772546:jyvyp2ppxma#gsc.tab=0) *\~ FB published images by keyword*
- 📜 [Facebook Profile ID Extractor](https://greasyfork.org/en/scripts/527377) *\~ FB id finder*
- 🌐 [tiktokerfinder.profiler.me](https://tiktokerfinder.profiler.me/) *\~ TK parser*

```html
https://www.facebook.com/profile.php?id=<PROFILEID>
```

- 🌐 [onlysearch.co](https://onlysearch.co/) *\~ OF searcher*
- 🌐 [mattw.io/youtube-metadata](https://mattw.io/youtube-metadata/) *\~ YT metadata parser*
- 🌐 [findyoutubevideo.thetechrobo.ca](https://findyoutubevideo.thetechrobo.ca/) *\~ YT private/removed parser*
- 🌐 [ytcomment.kmcat.uk](https://ytcomment.kmcat.uk) *\~ YT comments search*
- 🌐 [filmot.com](https://filmot.com/?searchManualSubs=0) *\~ YT global subtitles search*
- 🌐 [twitch-tools.rootonline.de](https://twitch-tools.rootonline.de/) *\~ TW followers/ing viewer*
- 🌐 [r00m101.com](https://r00m101.com/) *\~ Reddit profile analyzer*
- 🌐 [badoo-archive-collection](https://web.archive.org/collection-search/badoo.com) *\~ Badoo wayback db*
- 🌐 [strava.com/maps](https://www.strava.com/maps/) *\~ Stava global heatmap*

## Chat 💬

- 🌐 [vedbex.com](https://www.vedbex.com/) *\~ SKYPE mail/phone/ip*
- 🌐 [discordlookup.com](https://discordlookup.com/) *\~ DISCORD lookup*
- 🌐 [hugonun.github.io](https://hugonun.github.io/discordid2date/) (🌐 [chloethesis.github.io](https://chloethesis.github.io/tools/discord-date/)) *\~ DISCORD creation time*
- 🌐 [discord.com](https://discord.com/servers) (🌐 [discord.me](https://discord.me/servers), 🌐 [disboard.org](https://disboard.org/) ) *\~ DISCORD server search*
- 🌐 [intelx.io](https://intelx.io/tools?tab=telegram) *\~ TG search*
- 🌐 [tgfind.org](https://tgfind.org/) *\~ TG channel search*
- 🌐 [telegram-archive-collection](https://web.archive.org/collection-search/telegram) *\~ TG wayback db*
- ⚙️ [telegram-phone-number-checker](https://github.com/bellingcat/telegram-phone-number-checker) *\~ TG lookup*

```bash
python telegram_phone_number_checker/main.py --phone-numbers '<NUMBER>' --download-profile-photos
```

- ⚙️ [telepathy](https://github.com/proseltd/Telepathy-Community) *\~ TG groups/channels lookup*

```bash
telepathy -t '<NIKNAME>' -c
```

- 🌐 [@creationdatebot](https://t.me/creationdatebot) *\~ TG registration lookup*
- 🌐 [@SangMata_beta_bot](https://t.me/SangMata_beta_bot) *\~ TG nik lookup*

## Gaming 🎮️

- 🌐 [xresolver.com](https://xresolver.com/) *\~ XBOX/PSN/GTA resolver*
- 🌐 [psnprofiles.com](https://psnprofiles.com/) *\~ PSN parser*
- 🌐 [xboxgamertag.com](https://xboxgamertag.com/) *\~ XBOX parser*
- 🌐 [epic-lookup.com](https://epic-lookup.com/) *\~ EPICGAMES parser*

## Location 🗺️

- 🌐 [geospy.net](https://geospy.net/en/geospy) (🌐 [picarta.ai](https://picarta.ai/)) *\~ place finder \[AI\]*
- 🌐 [huggingface.co/mc-llava-3b](https://huggingface.co/spaces/visheratin/mc-llava-3b) *\~ place finder \[AI\]*
- 🌐 [overpass-ultra.trailsta.sh](https://overpass-ultra.trailsta.sh/) *\~ place parser*
- 💉 Gmaps Tracker by Google ID *\~ gmap tracker*

```html
https://www.google.com/maps/contrib/<GOOGLEID>
```
- ⚙️ [Weather2Geo](https://github.com/elliott-diy/Weather2Geo) *\~ city finder by weather and date*
```bash
python main.py --time "2025-05-22 14:00" --condition "Mostly cloudy" --temp 18 --tolerance 1.0
```
- 🌐 [colab.research.google.com](https://colab.research.google.com/github/GalenReich/ShadowFinder/blob/main/ShadowFinderColab.ipynb) *\~ place finder by sun shadow*
- 🌐 [pleper.com](https://pleper.com/index.php?do=tools&sdo=cid_converter) *\~ gmaps spots info*
- 🌐 [cse.google.com](https://cse.google.com/cse?cx=013991603413798772546:gjcdtyiytey#gsc.tab=0) *\~ webcam finder*
- 🌐 [wigle.net](https://wigle.net/) *\~ wifi wardriving map*
- 🌐 [plonkit.net](https://www.plonkit.net/guide) *\~ geoguesser wiki*
- 🌐 [geotips.net](https://geotips.net/) *\~ geoguesser wiki*
- 🌐 [geohints.com](https://geohints.com/) *\~ geoguesser objects wiki*
- 🌐 [cipher387.github.io](https://cipher387.github.io/venicle_number_search_toolbox/) *\~ car plate info*
- 🌐 [flightmapper.net](https://flightmapper.net/) *\~ flight tracking map*
- 🌐 [globe.airplanes.live](https://globe.airplanes.live/) *\~ live ship map*
- 🌐 [marinetraffic.com](https://www.marinetraffic.com/) *\~ live airplane map*
- 🌐 [aerobasegroup.com](https://aerobasegroup.com/tail-number-lookup) *\~ flight number lookup*

## General 📂
- 🌐 [intelx.io](https://intelx.io/tools?tab=general) *\~ multi-engine search*
- 💉 Localized Google Search ([ISO 3166-1 alpha-2 Table](https://gist.github.com/tadast/8827699)) *\~ search by country switching*

```html
https://www.google.com/search?q=<ANY>+<DORK>+<OR>+<CUSTOM>+<SEARCH>&cr=country<ALPHA-2-COUNTRY-CODE>
```

- 💉 Docs Search Dork *\~ general info gathering*

```html
"<NAME>" "<SURNAME>" "<CITY>" (filetype:pdf | filetype:doc | filetype:docx | filetype:odt | filetype:ods | filetype:odp | filetype:xls | filetype:xlsx | filetype:csv | filetype:txt | filetype:rtf | filetype:xml | filetype:ppt | filetype:pptx | filetype:key | filetype:zip | filetype:rar | filetype:7z | filetype:gz | filetype:log | filetype:json | filetype:audit | filetype:trace | filetype:debug | filetype:out | filetype:err)
```

- 🌐 [cybdetective.com/pastebin](https://cybdetective.com/pastebin.html) *\~ pastebin search*
- 🌐 [cybdetective.com/codesearch](https://cybdetective.com/codesearch.html) *\~ repos search*
- ⚙️ Hidden Metadata In Local Repos *\~ repos email/nikname finder*
```bash
git log --pretty=format:"[AUTHOR-EMAIL:%ae | AUTHOR-NIK:%an ][ COMMITTER-EMAIL:%ce | COMMITTER-NIK:%cn ][ DATE:%aD ]"
```
- 💉 Github User Info *\~ github user info parser*
```html
https://api.github.com/user/<USER-ID>
```
- 🌐 [ispyconnect.com](https://www.ispyconnect.com/docs/ispy/default-camera-passwords) *\~ ipcam passwords*
- 🌐 [cybdetective.com/osintmap](https://cybdetective.com/osintmap/) *\~ world institutions directory*
- 🌐 [osintguru.azurewebsites.net](https://osintguru.azurewebsites.net/countries/) *\~ world institutions directory*

## Corporate 💼

- 🌐 [companyresearcher.exa.ai](https://companyresearcher.exa.ai/) *\~ general company info*
- 🌐 [skymem.info](https://www.skymem.info/) *\~ company emails*
- 🌐 [lei.info](https://lei.info/) *\~ global company list*
- 🌐 [opencorporates.com](https://opencorporates.com/) *\~ global company list*

## Hosting 🕸️

- 🌐 [sitereport.netcraft.com](https://sitereport.netcraft.com/) *\~ website general info*
- 🌐 [centralops.net](https://centralops.net/) *\~ instant whois*
- 🌐 [whoxy.com/archive](https://www.whoxy.com/archive.php) *\~ whois DB history+email/name* 
- 🌐 [whois.easycounter.com](http://whois.easycounter.com/) *\~ whois DB history*
- 📜 [Reverse Whoxy Domain Status](https://greasyfork.org/en/scripts/541732) *\~ whois website checker*
- 🌐 [dnsdumpster.com](https://dnsdumpster.com/) *\~ reverse website location*
- 🌐 [viewdns.info/iphistory](https://viewdns.info/iphistory/?domain) *\~ ip hosting history*
- 🌐 [viewdns.info/reversens](https://viewdns.info/reversens/?ns) *\~ websites associated to dns*
- 🌐 [viewdns.info/reverseip](https://viewdns.info/reverseip/) *\~ all websites registered by ip*
- 🌐 [host.io](https://host.io/) *\~ all websites linked/redirect to a website*
- 🌐 [osint.sh/adsense](https://osint.sh/adsense/) *\~ reverse adsense lookup*
- 🌐 [osint.sh/analytics](https://osint.sh/analytics/) *\~ reverse google analytics lookup*
- 🌐 [crt.sh](https://crt.sh/) *\~ certificate analysis*
- ⚙️ [wayBackLister](https://github.com/anmolksachan/wayBackLister) *\~ wayback directory bruteforcer*
```bash
python waybacklister.py -d <SITE> -t 50
```
- ⚙️ [robofinder](https://github.com/Spix0r/robofinder) *\~ wayback robots.txt parser*
```bash
robofinder -u <SITE> -t 50 -c
```
- 💉 Subdomains Finder *\~ subdomains finder*
```html
https://api.hackertarget.com/hostsearch/?q=<WEBSITE>
https://www.virustotal.com/gui/domain/<WEBSITE>/relations
```
- 💉 Wayback Pages Finder (CDX API) *\~ wayback pages enumerator*
```html
https://web.archive.org/cdx/search/cdx?url=<WEBSITE>/path/page.php?<PARAMETER>=*  [&to=<YYYYMMDD>&from=<YYYYMMDD>]
```
- 💉 Wayback Hidden Domains/Files (CDX API) *\~ wayback pages enumerator*
```html
https://web.archive.org/cdx/search/cdx?url=*.<WEBSITE>&collapse=urlkey  [&to=<YYYYMMDD>&from=<YYYYMMDD>]
```
- 💉 Wayback Files Filer (CDX API) *\~ wayback mimetype filter*
```html
https://web.archive.org/cdx/search/cdx?url=<WEBSITE>&filter=mimetype:text/javascript&collapse=urlkey  [&to=<YYYYMMDD>&from=<YYYYMMDD>]
```
- 💉 Gravatar API *\~ get gravatar info*

```html
https://en.gravatar.com/<MD5_HASH_OF_EMAIL>.json
```

## Knocking 🚪

- 🌐 [instagram.com](https://www.instagram.com/accounts/password/reset/) (nik->✉️📞) *\~ account knocker*
- 🌐 [facebook.com](https://www.facebook.com/login/identify/?ctx=recover) (nik->✉️📞) *\~ account knocker*
- 🌐 [x.com](https://x.com/account/begin_password_reset) (nik->✅) *\~ account validator*
- 🌐 [accounts.google.com](https://accounts.google.com/v3/signin/identifier) (nik->✉️) *\~ account knocker*
- 🌐 [snapchat.com](https://www.snapchat.com/) (nik✉️📞->✅) *\~ account validator*
- 🌐 [discord.com](https://discord.com/login/) (nik✉️📞->✅) *\~ account validator*
- 🌐 [identity.flickr.com](https://identity.flickr.com/forgot-password) (✉️->✅) *\~ account validator*
- 🌐 [pinterest.com](https://www.pinterest.com/password/reset) (nik->✅) *\~ account validator*
- 🌐 [login.yahoo.com](https://login.yahoo.com/) (\*->✉️📞) *\~ account knocker*
- 🌐 [iforgot.apple.com](https://iforgot.apple.com/password/verify/appleid) (nik->✉️📞) *\~ account knocker*
- 🌐 [account.live.com](https://account.live.com/ResetPassword.aspx) (nik✉️📞skypeid->📞✉️) *\~ account knocker*
- 🌐 [paypal.com](https://www.paypal.com/authflow/email-recovery) (✉️->✅) *\~ account validator*
- 🌐 [accounts.binance.com](https://accounts.binance.com/en/security/user/reset-password) (📞✉️->✅) *\~ account validator*

## Breaches 🏴‍☠️

- 🌐 [databreach.com](https://databreach.com/) *\~ breach checker*
- 🌐 [haveibeenpwned.com](https://haveibeenpwned.com/) *\~ breach checker*
- 🌐 [dehashed.com](https://www.dehashed.com/search-guide) *\~ breach checker*
- 🌐 [infostealer.profiler.me](https://infostealer.profiler.me/) *\~ infostealer checker*
- 🌐 [intelbase.is](https://intelbase.is/) *\~ breach searcher*
- 🌐 [leakpeek.com](https://leakpeek.com/) *\~ breach searcher*
- 🌐 [leak-lookup.com](https://leak-lookup.com/) *\~ breach searcher*
- 🌐 [sizeof.cat](https://archive.is/eddPK) (🌐 [zerobin.net](https://zerobin.net/?63b7dfdecb91df82#gXCNC9KV04IvisCuqawb5huGUTqAM1ymHaXNN/VvGq4=)) ⚠️ **your responsibility** *\~ breach torrents*

## Resources 📚️

- 📚️ [Bellingcat's Online Investigation Toolkit](https://bellingcat.gitbook.io/toolkit)
- 📚️ [Malfrat's OSINT Map](https://map.malfrats.industries/)
- 📚️ [OSINT Framework](https://osintframework.com/)
- 📚️ [Cyber Detective's OSINT tools collection](https://cipher387.github.io/osint_stuff_tool_collection/)
- 📚️ [Cyber Detective's Dorks-collection-list](https://github.com/cipher387/Dorks-collections-list?tab=readme-ov-file)
- 📚️ [IntelTechniques Search Tools](https://inteltechniques.com/tools/)
- 📚️ [Awesome OSINT](https://github.com/jivoi/awesome-osint)
- 📚️ [Awesome Google Dorks](https://github.com/Tobee1406/Awesome-Google-Dorks)

## Donation 💛
If you want to support my research you can donate **Monero** (XMR).  
All donations will be used to buy new OSINT learning materials and tools to improve this project.  
Thank you!  

<img width="200" height="200" alt="image" src="https://i.postimg.cc/SNwMj0qM/image.png" />  

XMR: **87QKLLGi9nNc9G8K4Rg4aAVipmmixNywN4MgR3UzF3Z5YrgZn74UNFVRZpss4G63eHJbhD9N8tVKoZCKcKCGZyh8M6AUkSb**

