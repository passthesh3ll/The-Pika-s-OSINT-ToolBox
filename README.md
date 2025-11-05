# The Pika's OSINT ToolBox ⚡️

![image](https://i.postimg.cc/NfRjWRNj/pika-osint-circle.png)

## Description

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

- ⚙️ [maigret](https://github.com/soxoj/maigret) (🌐 [osint.rocks](https://osint.rocks/)) _\~ username reverse lookup_

```bash
maigret 'username' --html
```

- ⚙️ [WhatsMyName](https://github.com/C3n7ral051nt4g3ncy/WhatsMyName-Python) (🌐 [whatsmyname.app](https://whatsmyname.app)) _\~ username scraper_

```bash
python whatsmyname.py -u 'username'
```

- 🌐 [user-searcher.com](https://www.user-searcher.com/) _\~ username reverse lookup_

## Email ✉️

- 🌐 [metricsparrow.com](http://metricsparrow.com/toolkit/email-permutator) _\~ email permutator_
- 🌐 [seintpl.github.io/NAMINT](https://seintpl.github.io/NAMINT) _\~ email checker_
- 💉 Email Finder by Domain Dork ([top 100 email providers](https://rentry.co/top-100-email-providers)) _\~ email searcher_

```html
"<NAME>" "<SURNAME>" (intext:"@gmail.com" | intext:"@yahoo.com" | intext:"@hotmail.com" | intext:"@outlook.com"| intext:"@icloud.com")
```

- 🌐 [emailhippo.com](https://tools.emailhippo.com) _\~ email checker_
- 🌐 [minervaosint.com](https://minervaosint.com/) _\~ email reverse lookup_
- ⚙️ [holehe](https://github.com/megadose/holehe) (🌐 [osint.rocks](https://osint.rocks/)) _\~ email reverse lookup_

```bash
holehe 'email@provider.com'
```

- ⚙️ [ghunt](https://github.com/mxrch/GHunt) (🌐 [osint.rocks](https://osint.rocks/), 🌐 [gmail-osint](https://gmail-osint.activetk.jp/)) _\~ gmail parser_
- 🌐 [epieos.com](https://epieos.com/) _\~ email reverse lookup_
- 🌐 [castrickclues.com](https://castrickclues.com/) _\~ email reverse lookup_

## Phone 📞

- 🌐 [smsc.ru](https://smsc.ru/testhlr/) _\~ phone lookup_
- ⚙️ [phoneinfoga](https://github.com/sundowndev/phoneinfoga) _\~ phone lookup_

```bash
phoneinfoga scan -n '<XX> <NUMBER>'
```

- ⚙️ [ignorant](https://github.com/megadose/ignorant) (🌐 [osint.rocks](https://osint.rocks/)) _\~ phone reverse lookup_

```bash
ignorant '<NUMBER>' --only-used
```

## Image 🖼️

- 🌐 [pimeyes.com](https://pimeyes.com/en) (📜 [unblur](https://greasyfork.org/en/scripts/531501)) _\~ reverse face search_ 🤖
- 🌐 [huggingface.co/FaceOnLive](https://huggingface.co/FaceOnLive/spaces) _\~ reverse face search_ 🤖
- 🌐 [facecheck.id](https://facecheck.id/) _\~ reverse face search_ 🤖
- 🌐 [tattoodo.com](https://www.tattoodo.com/tattoos) _\~ tattoo location lookup_
- 🌐 [images.google.com](https://images.google.com/) (🌐 [yandex.com](https://yandex.com/images "https://yandex.com/images?")) _\~ reverse image search_
- 🌐 [lenso.ai](https://lenso.ai/) (📜 [unblur](https://greasyfork.org/en/scripts/531499)) _\~ reverse image search_ 🤖
- 🌐 [exifinfo.org](https://exifinfo.org) _\~ exif lookup_
- 🌐 [29a.ch](https://29a.ch/photo-forensics/#forensic-magnifier) _\~ image forensic_

## Social 👥

- 🌐 [cse.google.com](https://cse.google.com/cse?cx=029ffbc44aa3946cb) _\~ multi-social search_
- 💉 Multisocial Search Dork _\~ multi-social search_

```html
"<NAME>" "<SURNAME>" "<CITY>" (site:facebook.com | site:x.com | site:instagram.com | site:tiktok.com)
```

- 💉 Instagram Place Search _\~ IG place finder_

```html
inurl:"<PLACE>" site:instagram.com
https://www.instagram.com/explore/search/keyword/?q=<PLACE>
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
"<NAME>" "<SURNAME>" ("studied at <SCHOOL>" | "went to <SCHOOL>") site:facebook.com
"<NAME>" "<SURNAME>" ("worked at <COMPANY>" | "works at <COMPANY>") site:facebook.com
```

- 🌐 [facebook.com/ads/library](https://www.facebook.com/ads/library/) _\~ FB/IG ads library_
- 🌐 [cse.google.com](https://cse.google.com/cse?cx=013991603413798772546:jyvyp2ppxma#gsc.tab=0) _\~ FB published images by keyword_
- 📜 [Facebook Profile ID Extractor](https://greasyfork.org/en/scripts/527377) _\~ FB id finder_

```html
https://www.facebook.com/profile.php?id=<PROFILEID>
```

- 🌐 [onlysearch.co](https://onlysearch.co/) _\~ OF searcher_
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
- 🌐 [discordlookup.com](https://discordlookup.com/) _\~ DISCORD lookup_
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
telepathy -t '<NIKNAME>' -c
```

- 🌐 [@creationdatebot](https://t.me/creationdatebot) _\~ TG registration lookup_
- 🌐 [@SangMata_beta_bot](https://t.me/SangMata_beta_bot) _\~ TG nik lookup_

## Gaming 🎮️

- 🌐 [xresolver.com](https://xresolver.com/) _\~ XBOX/PSN/GTA resolver_
- 🌐 [psnprofiles.com](https://psnprofiles.com/) _\~ PSN parser_
- 🌐 [xboxgamertag.com](https://xboxgamertag.com/) _\~ XBOX parser_
- 🌐 [epic-lookup.com](https://epic-lookup.com/) _\~ EPICGAMES parser_

## Location 🗺️

- 🌐 [geospy.net](https://geospy.net/en/geospy) (🌐 [picarta.ai](https://picarta.ai/)) _\~ place finder_ 🤖
- 🌐 [huggingface.co/mc-llava-3b](https://huggingface.co/spaces/visheratin/mc-llava-3b) _\~ place finder_ 🤖
- 🌐 [overpass-ultra.trailsta.sh](https://overpass-ultra.trailsta.sh/) _\~ place parser_
- 💉 Gmaps Tracker by Google ID _\~ gmap tracker_

```html
https://www.google.com/maps/contrib/<GOOGLEID>
```

- ⚙️ [Weather2Geo](https://github.com/elliott-diy/Weather2Geo) _\~ city finder by weather and date_

```bash
python main.py --time "2025-05-22 14:00" --condition "Mostly cloudy" --temp 18 --tolerance 1.0
```

- 🌐 [colab.research.google.com](https://colab.research.google.com/github/GalenReich/ShadowFinder/blob/main/ShadowFinderColab.ipynb) _\~ place finder by sun shadow_
- 🌐 [pleper.com](https://pleper.com/index.php?do=tools&sdo=cid_converter) _\~ gmaps spots info_
- 🌐 [cse.google.com](https://cse.google.com/cse?cx=013991603413798772546:gjcdtyiytey#gsc.tab=0) (🌐 [cybdetective.com/webcamcse](https://cybdetective.com/webcamcse.html)) _\~ webcam finder_
- 🌐 [wigle.net](https://wigle.net/) _\~ wifi wardriving map_
- 🌐 [plonkit.net](https://www.plonkit.net/guide) _\~ geoguesser wiki_
- 🌐 [geotips.net](https://geotips.net/) _\~ geoguesser wiki_
- 🌐 [geohints.com](https://geohints.com/) _\~ geoguesser objects wiki_
- 🌐 [cipher387.github.io](https://cipher387.github.io/venicle_number_search_toolbox/) _\~ car plate info_
- 🌐 [flightmapper.net](https://flightmapper.net/) _\~ flight tracking map_
- 🌐 [globe.airplanes.live](https://globe.airplanes.live/) _\~ live ship map_
- 🌐 [marinetraffic.com](https://www.marinetraffic.com/) _\~ live airplane map_
- 🌐 [aerobasegroup.com](https://aerobasegroup.com/tail-number-lookup) _\~ flight number lookup_

## General 📂

- 🌐 [intelx.io](https://intelx.io/tools?tab=general) _\~ multi-engine search_
- 💉 Localized Google Search ([ISO 3166-1 alpha-2 Table](https://gist.github.com/tadast/8827699)) _\~ search by country switching_

```html
https://www.google.com/search?q=<ANY>+<DORK>+<OR>+<CUSTOM>+<SEARCH>&cr=country<ALPHA-2-COUNTRY-CODE>
```

- 💉 Docs Search Dork _\~ general info gathering_

```html
"<NAME>" "<SURNAME>" "<CITY>" (filetype:pdf | filetype:doc | filetype:docx | filetype:odt | filetype:ods | filetype:odp | filetype:xls | filetype:xlsx | filetype:csv | filetype:txt | filetype:rtf | filetype:xml | filetype:ppt | filetype:pptx | filetype:key | filetype:zip | filetype:rar | filetype:7z | filetype:gz | filetype:log | filetype:json | filetype:audit | filetype:trace | filetype:debug | filetype:out | filetype:err)
```

- 🌐 [cybdetective.com/pastebin](https://cybdetective.com/pastebin.html) _\~ pastebin search_
- 🌐 [cybdetective.com/codesearch](https://cybdetective.com/codesearch.html) _\~ repos search_
- ⚙️ Hidden Metadata In Local Repos _\~ repos email/nikname finder_

```bash
git log --pretty=format:"[AUTHOR-EMAIL:%ae | AUTHOR-NIK:%an ][ COMMITTER-EMAIL:%ce | COMMITTER-NIK:%cn ][ DATE:%aD ]"
```

- 💉 Github User Info _\~ github user lookup_

```html
https://api.github.com/users/<NIKNAME>
```

- 🌐 [ispyconnect.com](https://www.ispyconnect.com/docs/ispy/default-camera-passwords) _\~ ipcam passwords_
- 🌐 [cybdetective.com/osintmap](https://cybdetective.com/osintmap/) _\~ world institutions directory_
- 🌐 [osintguru.azurewebsites.net](https://osintguru.azurewebsites.net/countries/) _\~ world institutions directory_
- 🌐 [ean-search.org](https://www.ean-search.org/) _\~ multi-barcode lookup_

## Corporate 💼

- 🌐 [companyresearcher.exa.ai](https://companyresearcher.exa.ai/) _\~ general company info_
- 🌐 [skymem.info](https://www.skymem.info/) _\~ company emails_
- 🌐 [lei.info](https://lei.info/) _\~ legal company identifier_
- 🌐 [opencorporates.com](https://opencorporates.com/) _\~ open corporate database_
- 💉 Company Employee Dork _\~ linkedin company users_

```html
site:linkedin.com inurl:in “<COMPANY>”
```

## Hosting 🕸️

- 🌐 [sitereport.netcraft.com](https://sitereport.netcraft.com/) _\~ website general info_
- 🌐 [centralops.net](https://centralops.net/) _\~ instant whois_
- 🌐 [whoxy.com/archive](https://www.whoxy.com/archive.php) _\~ whois DB history+email/name_
- 🌐 [whois.easycounter.com](http://whois.easycounter.com/) _\~ whois DB history_
- 📜 [Reverse Whoxy Domain Status](https://greasyfork.org/en/scripts/541732) _\~ whois website checker_
- 🌐 [dnsdumpster.com](https://dnsdumpster.com/) _\~ reverse website location_
- 🌐 [viewdns.info/iphistory](https://viewdns.info/iphistory/?domain) _\~ ip hosting history_
- 🌐 [viewdns.info/reversens](https://viewdns.info/reversens/?ns) _\~ websites associated to dns_
- 🌐 [viewdns.info/reverseip](https://viewdns.info/reverseip/) _\~ all websites registered by ip_
- 🌐 [host.io](https://host.io/) _\~ all websites linked/redirect to a website_
- 🌐 [osint.sh/adsense](https://osint.sh/adsense/) _\~ reverse adsense lookup_
- 🌐 [osint.sh/analytics](https://osint.sh/analytics/) _\~ reverse google analytics lookup_
- 🌐 [crt.sh](https://crt.sh/) _\~ certificate analysis_
- ⚙️ [wayBackLister](https://github.com/anmolksachan/wayBackLister) _\~ wayback directory bruteforcer_

```bash
python waybacklister.py -d <SITE> -t 50
```

- ⚙️ [robofinder](https://github.com/Spix0r/robofinder) _\~ wayback robots.txt parser_
```bash
robofinder -u <SITE> -t 50 -c
```

- 💉 Subdomains Finder _\~ subdomains finder_
```html
https://api.hackertarget.com/hostsearch/?q=<WEBSITE>
https://www.virustotal.com/gui/domain/<WEBSITE>/relations
```

- 💉 Wayback Pages Finder (CDX API) _\~ wayback pages enumerator_
```html
https://web.archive.org/cdx/search/cdx?url=<WEBSITE>/path/page.php?<PARAMETER>=*  [&to=<YYYYMMDD>&from=<YYYYMMDD>]
```

- 💉 Wayback Hidden Domains/Files (CDX API) _\~ wayback pages enumerator_
```html
https://web.archive.org/cdx/search/cdx?url=*.<WEBSITE>&collapse=urlkey  [&to=<YYYYMMDD>&from=<YYYYMMDD>]
```

- 💉 Wayback Files Filer (CDX API) _\~ wayback mimetype filter_
```html
https://web.archive.org/cdx/search/cdx?url=<WEBSITE>&filter=mimetype:text/javascript&collapse=urlkey  [&to=<YYYYMMDD>&from=<YYYYMMDD>]
```

- 💉 Gravatar API _\~ gravatar lookup_

```html
https://en.gravatar.com/<MD5_HASH_OF_EMAIL>.json
```

## Knocking 🚪

- 🌐 [instagram.com](https://www.instagram.com/accounts/password/reset/) (nik->✉️📞) _\~ account knocker_
- 🌐 [facebook.com](https://www.facebook.com/login/identify/?ctx=recover) (nik->✉️📞) _\~ account knocker_
- 🌐 [x.com](https://x.com/account/begin_password_reset) (nik->✅) _\~ account validator_
- 🌐 [accounts.google.com](https://accounts.google.com/) (nik->✉️) _\~ account knocker_
- 🌐 [snapchat.com](https://www.snapchat.com/) (nik✉️📞->✅) _\~ account validator_
- 🌐 [discord.com](https://discord.com/login/) (nik✉️📞->✅) _\~ account validator_
- 🌐 [identity.flickr.com](https://identity.flickr.com/forgot-password) (✉️->✅) _\~ account validator_
- 🌐 [pinterest.com](https://www.pinterest.com/password/reset) (nik->✅) _\~ account validator_
- 🌐 [login.yahoo.com](https://login.yahoo.com/) (\*->✉️📞) _\~ account knocker_
- 🌐 [iforgot.apple.com](https://iforgot.apple.com/password/verify/appleid) (nik->✉️📞) _\~ account knocker_
- 🌐 [account.samsung.com](https://account.samsung.com/accounts/v1/SAMSUNGCA/findId) (nik->✉️) _\~ account knocker_
- 🌐 [account.live.com](https://account.live.com/ResetPassword.aspx) (nik✉️📞skypeid->📞✉️) _\~ account knocker_
- 🌐 [paypal.com](https://www.paypal.com/authflow/email-recovery) (✉️->✅) _\~ account validator_
- 🌐 [accounts.binance.com](https://accounts.binance.com/en/security/user/reset-password) (📞✉️->✅) _\~ account validator_

## Breaches 🏴‍☠️

- 🌐 [databreach.com](https://databreach.com/) _\~ breach checker_
- 🌐 [haveibeenpwned.com](https://haveibeenpwned.com/) _\~ breach checker_
- 🌐 [dehashed.com](https://www.dehashed.com/) _\~ breach checker_
- 🌐 [intelbase.is](https://intelbase.is/) (🌐 [oathnet.org](https://oathnet.org/)) _\~ breach/account searcher_
- 🌐 [breach.vip](https://breach.vip/) _\~ breach searcher_
- 🌐 [sizeof.cat](https://sizeof.cat/post/data-leaks/) (🌐 [zerobin.net](https://zerobin.net/?63b7dfdecb91df82#gXCNC9KV04IvisCuqawb5huGUTqAM1ymHaXNN/VvGq4=)) ⚠️ **your responsibility** _\~ breach torrents_

## Resources 📚️

- 📚️ [Bellingcat's Online Investigation Toolkit](https://bellingcat.gitbook.io/toolkit)
- 📚️ [Malfrat's OSINT Map](https://map.malfrats.industries/)
- 📚️ [OSINT Framework](https://osintframework.com/)
- 📚️ [Cyber Detective's OSINT tools collection](https://cipher387.github.io/osint_stuff_tool_collection/)
- 📚️ [Cyber Detective's Dorks-collection-list](https://github.com/cipher387/Dorks-collections-list?tab=readme-ov-file)
- 📚️ [IntelTechniques Search Tools](https://inteltechniques.com/tools/)
- 📚️ [Awesome OSINT](https://github.com/jivoi/awesome-osint)
- 📚️ [Awesome Google Dorks](https://github.com/Tobee1406/Awesome-Google-Dorks)

## Contact 📨
For contributions and reports: **pikaosint@proton.me**

## Donation 💛

If you want to support my research you can donate **Monero** (XMR).  
All donations will be used to buy new OSINT learning materials and tools to improve this project.  
Thank you!

<img width="200" height="200" alt="image" src="https://i.postimg.cc/SNwMj0qM/image.png" />

XMR: **87QKLLGi9nNc9G8K4Rg4aAVipmmixNywN4MgR3UzF3Z5YrgZn74UNFVRZpss4G63eHJbhD9N8tVKoZCKcKCGZyh8M6AUkSb**
