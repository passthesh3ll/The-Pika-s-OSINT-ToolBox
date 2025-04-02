# The Pika's OSINT ToolBox ⚡️

![image](https://i.postimg.cc/NfRjWRNj/pika-osint-circle.png)

## Description

Open Source Intelligence ([OSINT](https://en.wikipedia.org/wiki/Open-source_intelligence)) is the collection and analysis of data gathered from open sources to produce actionable intelligence. This carefully edited OSINT list won't be an endless list of links, but priority will be given to highly effective content, the goal is quality over quantity.

> \[!WARNING\]  
> While OSINT itself is not illegal, it is crucial to understand that the legality of specific OSINT activities depends heavily on how the information is obtained and used. You assume full and sole responsibility for all consequences of your actions. This includes, but is not limited to, any direct, indirect, incidental, or consequential damages.

#### Symbols

- ⚙️ *Executable Program*
- 🌐 *Website Tool*
- 💉 *Exploitable Dork/Page/API*
- 📜 *Userscript*
- 📚️ *Wiki/List Resource*

## Username 🏷️

- ⚙️ [maigret](https://github.com/soxoj/maigret) (🌐 [osint.rocks](https://osint.rocks/)) *~ username checker*

```bash
maigret 'username' --html
```

- 🌐 [whatsmyname.app](https://whatsmyname.app) *~ username scraper*

## Email ✉️

- 🌐 [metricsparrow.com](http://metricsparrow.com/toolkit/email-permutator) *~ email permutator*
- 💉 Email Finder by Domain ([top 100 email providers](https://rentry.co/top-100-email-providers)) *~ email finder*

```html
<NAME> <SURNAME> intext:"@gmail.com" | intext:"@yahoo.com" | intext:"@hotmail.com"
```

- 💉 Email Finder by Website *~ email finder*

```html
 site:<WEBSITE> intitle:"email" | intitle:"contact" | intitle:"about"
```

- 🌐 [account.samsung.com](https://account.samsung.com/accounts/v1/SAMSUNGCA/findId) *~ email finder*
- 🌐 [emailhippo.com](https://tools.emailhippo.com) *~ email checker*
- ⚙️ [holehe](https://github.com/megadose/holehe) (🌐 [osint.rocks](https://osint.rocks/)) *~ email registered accounts*

```bash
holehe 'email@provider.com'
```

- 🌐 [intelbase.is](https://intelbase.is/) *~ email registered accounts*
- ⚙️ [ghunt](https://github.com/mxrch/GHunt) (🌐 [osint.rocks](https://osint.rocks/), 🌐 [gmail-osint](https://gmail-osint.activetk.jp/)) *~ gmail parser*
- 🌐 [epieos.com](https://epieos.com/) *~ email parser*
- 🌐 [castrickclues.com](https://castrickclues.com/) *~ email parser*

## Phone 📞

- ⚙️ [phoneinfoga](https://github.com/sundowndev/phoneinfoga) *~ phone parser*

```bash
phoneinfoga scan -n '<NUMBER>'
```

- ⚙️ [ignorant](https://github.com/megadose/ignorant) (🌐 [osint.rocks](https://osint.rocks/)) *~ phone registered accounts*

```bash
ignorant '<NUMBER>' --only-used
```

## Image 🖼️

- 🌐 [faceonlive.com](https://faceonlive.com/face-search-online/#search-panel) *~ reverse face search \[AI\]*
- 🌐 [pimeyes.com](https://pimeyes.com/en) (📜 [unblur](https://greasyfork.org/en/scripts/531501)) *~ reverse face search \[AI\]*
- 🌐 [images.google.com](https://images.google.com/) (🌐 [yandex.com](https://yandex.com/images "https://yandex.com/images?")) *~ reverse image search*
- 🌐 [lenso.ai](https://lenso.ai/) (📜 [unblur](https://greasyfork.org/en/scripts/531499)) *~ reverse image search \[AI\]*
- 🌐 [exifinfo.org](https://exifinfo.org) *~ exif parser*
- 🌐 [29a.ch](https://29a.ch/photo-forensics/#forensic-magnifier) *~ image forensic parser*

## Social 👥

- 💉 Multisocial Search *~ social profiles finder*

```html
<NAME> <SURNAME> <CITY> site:facebook.com | site:x.com | site:instagram.com | site:tiktok.com
```

- 💉 Instagram Place Search *~ ig place finder*

```html
https://www.instagram.com/explore/search/keyword/?q=<PLACE>
```

- ⚙️ [instaloader](https://github.com/instaloader/instaloader) *~ backup ig profile*
- 📜 [Instagram Followers/Following Scraper](https://greasyfork.org/en/scripts/527647) *~ backup ig followe/rs*
- 📜 [Instagram Post Date and Location](https://greasyfork.org/en/scripts/527757) *~ enrich ig info*
- 📜 [Instagram Threads Checker](https://greasyfork.org/en/scripts/526760) *~ ig threads matcher*
- 📜 [Facebook Profile ID Extractor](https://greasyfork.org/en/scripts/527377) *~ fb id finder*

```html
https://www.facebook.com/profile.php?id=<PROFILEID>
```

- 🌐 [ytcomment.kmcat.uk](https://ytcomment.kmcat.uk) *~ yt comments search*
- 🌐 [badoo-archive-collection](https://web.archive.org/collection-search/badoo.com) *~ bd wayback search*
- 💉 Last 3months Strava History *~ strava info*

```html
https://www.strava.com/athletes/<NIKNAME>
```

## Chat 💬

- 🌐 [vedbex.com](https://www.vedbex.com/) *~ mail/phone/ip skype*
- 🌐 [discord.id](https://discord.id/) *~ discord lookup*
- 🌐 [intelx.io](https://intelx.io/tools?tab=telegram) *~ telegram search*
- 🌐 [telegram-archive-collection](https://web.archive.org/collection-search/telegram) *~ telegram wayback search*
- ⚙️ [telegram-phone-number-checker](https://github.com/bellingcat/telegram-phone-number-checker) *~ telegram lookup*

```bash
python telegram_phone_number_checker/main.py --phone-numbers '<NUMBER>' --download-profile-photos
```

- ⚙️ [telepathy](https://github.com/proseltd/Telepathy-Community) *~ telegram groups/channels lookup*

```bash
telepathy -t '<NIKNAME>' -c
```

## Gaming 🎮️

- 🌐 [xresolver.com](https://xresolver.com/) *~ xbox/psn/gta resolver*
- 🌐 [psnprofiles.com](https://psnprofiles.com/) *~ psn parser*
- 🌐 [xboxgamertag.com](https://xboxgamertag.com/) *~ xbox parser*
- 🌐 [epic-lookup.com](https://epic-lookup.com/) *~ epicgames parser*

## Location 🗺️

- 🌐 [geospy.net](https://geospy.net/en/geospy) *~ place finder \[AI\]*
- 🌐 [huggingface.co/mc-llava-3b](https://huggingface.co/spaces/visheratin/mc-llava-3b) *~ place finder \[AI\]*
- 🌐 [overpass-ultra.trailsta.sh](https://overpass-ultra.trailsta.sh/) *~ place parser*
- 💉 Gmaps Tracker by Google ID *~ gmap tracker*

```html
https://www.google.com/maps/contrib/<GOOGLEID>
```

- 🌐 [pleper.com](https://pleper.com/index.php?do=tools&sdo=cid_converter) *~ gmaps spots info*
- 🌐 [plonkit.net](https://www.plonkit.net/guide) *~ geoguesser guide*
- 🌐 [cipher387.github.io](https://cipher387.github.io/venicle_number_search_toolbox/) *~ car plate info*

## General 📂

- 💉 Docs Info Gathering *~ general info gathering*

```html
<NAME> <SURNAME> <CITY> filetype:xls | filetype:xlsx | filetype:doc | filetype:docx | filetype:ppt | filetype:pptx | filetype:pdf
```

- 🌐 [cybdetective.com/pastebin](https://cybdetective.com/pastebin.html) *~ pastebin search*
- 🌐 [cybdetective.com/codesearch](https://cybdetective.com/codesearch.html) *~ repos search*
- 🌐 [Cyber Detective's WorldMap](https://cybdetective.com/osintmap/) *~ world institutions directory*

## Company 💼

- 🌐 [companyresearcher.exa.ai](https://companyresearcher.exa.ai/) *~ general company info*
- 🌐 [skymem.info](https://www.skymem.info/) *~ company emails*

## Hosting 🕸️

- 🌐 [sitereport.netcraft.com](https://sitereport.netcraft.com/) *~ website general info*
- 🌐 [centralops.net](https://centralops.net/) *~ whois*
- 🌐 [dnsdumpster.com](https://dnsdumpster.com/) *~ reverse website location*
- 🌐 [viewdns.info/iphistory](https://viewdns.info/iphistory/?domain) *~ ip website hystory*
- 🌐 [viewdns.info/reversens](https://viewdns.info/reversens/?ns) *~ websites associated to dns*
- 🌐 [viewdns.info/reverseip](https://viewdns.info/reverseip/) *~ all websites registered by ip*
- 🌐 [whoxy.com/archive](https://www.whoxy.com/archive.php) *~ all websites registered by name/email*
- 🌐 [osint.sh/adsense](https://osint.sh/adsense/) *~ all websites registered by adsense*
- 💉 Subdomains Finder *~ subdomains finder*

```html
https://api.hackertarget.com/hostsearch/?q=<WEBSITE>
https://www.virustotal.com/gui/domain/<WEBSITE>/relations
```

- 🌐 [crt.sh](https://crt.sh/) *~ certificate analysis*
- 💉 Gravatar API *~ get gravatar info*

```html
https://en.gravatar.com/<MD5_HASH_OF_EMAIL>.json
```

## Knocking 🚪

- 🌐 [instagram.com](https://www.instagram.com/accounts/password/reset/) (nikname->✉️📞) *~ account knocker*
- 🌐 [facebook.com](https://www.facebook.com/login/identify/?ctx=recover) (nikname->✉️📞) *~ account knocker*
- 🌐 [x.com](https://x.com/account/begin_password_reset) (nikname->✅) *~ account validator*
- 🌐 [accounts.google.com](https://accounts.google.com/v3/signin/identifier/) (nikname->✉️) *~ account knocker*
- 🌐 [snapchat.com](https://www.snapchat.com/) (nikname✉️📞->✅) *~ account validator*
- 🌐 [identity.flickr.com](https://identity.flickr.com/forgot-password) (✉️->✅) *~ account validator*
- 🌐 [pinterest.com](https://www.pinterest.com/password/reset/) (nikname->✅) *~ account validator*
- 🌐 [login.yahoo.com](https://login.yahoo.com/) (\*->✉️📞) *~ account knocker*
- 🌐 [iforgot.apple.com](https://iforgot.apple.com/password/verify/appleid) (nikname->✉️📞) *~ account knocker*
- 🌐 [account.live.com](https://account.live.com/ResetPassword.aspx) (nikname✉️📞SKYPEID->📞✉️) *~ account knocker*
- 🌐 [paypal.com](https://www.paypal.com/authflow/email-recovery) (✉️->✅) *~ account validator*

## Breaches 🏴‍☠️

- 🌐 [databreach.com](https://databreach.com/) *~ breach cheker*
- 🌐 [haveibeenpwned.com](https://haveibeenpwned.com/) *~ breach cheker*
- 🌐 [dehashed.com](https://www.dehashed.com/search-guide) *~ breach cheker*
- 🌐 [leak-lookup.com](https://leak-lookup.com/) *~ breach searcher*
- 🌐 [leakpeek.com](https://leakpeek.com/) *~ breach searcher*
- 🌐 [sizeof.cat](https://sizeof.cat/post/data-leaks/) (⚠️ you assume all responsibility of your actions) *~ breach torrents*

## Resources 📚️

- 📚️ [Bellingcat's Online Investigation Toolkit](https://bellingcat.gitbook.io/toolkit)
- 📚️ [Malfrat's OSINT Map](https://map.malfrats.industries/)
- 📚️ [OSINT Framework](https://osintframework.com/)
- 📚️ [Cyber Detective's OSINT tools collection](https://cipher387.github.io/osint_stuff_tool_collection/)
- 📚️ [Cyber Detective's Dorks-collection-list](https://github.com/cipher387/Dorks-collections-list?tab=readme-ov-file)
- 📚️ [IntelTechniques Search Tools](https://inteltechniques.com/tools/)
- 📚️ [Awesome OSINT](https://github.com/jivoi/awesome-osint)
