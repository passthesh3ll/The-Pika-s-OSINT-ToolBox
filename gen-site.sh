#!/bin/bash

# gen-site.sh - Markdown to HTML
set -euo pipefail

[[ $# -ne 2 ]] && { echo "Usage: $0 <input.md> <output.html>"; exit 1; }
[[ -f "$1" ]] || { echo "Error: '$1' not found"; exit 1; }

INPUT_MD="$1"
OUTPUT_HTML="$2"
mkdir -p "$(dirname "$OUTPUT_HTML")"

# Convert Markdown → HTML
FULL_HTML=$(pandoc "$INPUT_MD" --from=gfm --to=html --standalone --syntax-highlighting=monochrome --wrap=none --metadata title="The Pika's OSINT ToolBox")

# Extract body content
BODY_CONTENT=$(echo "$FULL_HTML" | sed -n '/<body[^>]*>/,/<\/body>/p' | sed '1s/.*<body[^>]*>//; $s/<\/body>.*//')

# Remove first <h1> (duplicate title)
BODY_NO_TITLE=$(echo "$BODY_CONTENT" | awk '/<h1[^>]*>.*<\/h1>/ {next} {print}')

# Extract logo image and remove it from the body
LOGO_IMG=$(echo "$BODY_NO_TITLE" | grep -oP '<img[^>]*src="https://[^"]*postimg\.cc/[^"]*pika[^"]*"[^>]*/?>' | head -1)
CLEAN_BODY=$(echo "$BODY_NO_TITLE" | perl -0777 -pe 's/<p>\s*<img[^>]*src="https:\/\/[^"]*postimg\.cc\/[^"]*pika[^"]*"[^>]*\/?>\s*<\/p>\s*//s')

# Remove duplicate section dividers around FlowCharts heading
CLEAN_BODY=$(echo "$CLEAN_BODY" | perl -0777 -pe 's|<hr class="section-divider">\s*<h2([^>]*)>(.*?)</h2>\s*<hr class="section-divider">|<h2\1>\2</h2>|gs')

# Add class="logo" to the extracted logo
if [[ -n "$LOGO_IMG" ]]; then
    LOGO_IMG=$(echo "$LOGO_IMG" | sed -E 's/<img/<img class="logo"/; s/\s*\/?>$/>/')
fi

# Turn GitHub-style warning marker into a styled callout heading
CLEAN_BODY=$(echo "$CLEAN_BODY" | sed 's/\[!WARNING\]/⚠️ <b>WARNING<\/b>/g')

# Replace h2 section emojis with monochromatic Bootstrap Icons (id → icon map)
CLEAN_BODY=$(echo "$CLEAN_BODY" | perl -CSD -Mutf8 -0777 -pe '
BEGIN {
    %icons = (
        "about-information_source"    => "info-circle",
        "username-label"              => "tag",
        "email-envelope"              => "envelope",
        "phone-telephone_receiver"    => "telephone",
        "image-framed_picture"        => "image",
        "social-busts_in_silhouette"  => "people",
        "chat-speech_balloon"         => "chat-dots",
        "gaming-video_game\x{fe0f}"   => "controller",
        "location-world_map"          => "geo-alt",
        "general-open_file_folder"    => "folder",
        "corporate-briefcase"         => "briefcase",
        "hosting-spider_web"          => "diagram-3",
        "knocking-door"               => "door-open",
        "breaches-pirate_flag"        => "shield-exclamation",
        "flowcharts-bulb"             => "lightbulb",
        "resources-books\x{fe0f}"     => "book",
        "contact-incoming_envelope"   => "envelope-paper",
        "donation-yellow_heart"       => "heart",
    );
}
s{<h2([^>]*)id="([^"]*)"([^>]*)>(.*?)</h2>}{
    my ($pre, $id, $post, $inner) = ($1, $2, $3, $4);
    if (exists $icons{$id}) {
        my $text = $inner;
        $text =~ s/\s+\S+\s*$//;
        $text =~ s/^\s+|\s+$//g;
        qq{<h2$pre id="$id"$post><i class="bi bi-$icons{$id}"></i> $text</h2>};
    } else {
        qq{<h2$pre id="$id"$post>$inner</h2>};
    }
}ges;
')

# Replace inline emojis with Bootstrap Icons
CLEAN_BODY=$(echo "$CLEAN_BODY" | perl -CSD -Mutf8 -pe '
    s/\x{2699}\x{fe0f}/<i class="bi bi-gear icon-sym"><\/i>/g;
    s/\x{1F310}/<i class="bi bi-globe icon-sym"><\/i>/g;
    s/\x{1F489}/<i class="bi bi-shield-lock icon-sym"><\/i>/g;
    s/\x{1F4DC}/<i class="bi bi-file-earmark-code icon-sym"><\/i>/g;
    s/\x{1F916}/<i class="bi bi-robot icon-sym"><\/i>/g;
    s/\x{1F4DA}\x{fe0f}/<i class="bi bi-book icon-sym"><\/i>/g;
    s/\x{26A0}\x{fe0f}/<i class="bi bi-exclamation-triangle icon-warn"><\/i>/g;
    s/\x{1F3F7}\x{fe0f}/<i class="bi bi-tag icon-sym"><\/i>/g;
    s/\x{2709}\x{fe0f}/<i class="bi bi-envelope icon-sym"><\/i>/g;
    s/\x{1F4DE}/<i class="bi bi-telephone icon-sym"><\/i>/g;
    s/\x{2705}/<i class="bi bi-check-circle icon-sym"><\/i>/g;
')

# Duplicate the star-history chart into dark/light SVGs swapped by CSS
STAR_FIX_SCRIPT=$(mktemp)
cat > "$STAR_FIX_SCRIPT" <<'PERLEOF'
undef $/;
my $data = <STDIN>;
$data =~ s{<img([^>]*)src="(https://star-history\.dera\.page/svg\?[^"]*?)&amp;theme=(?:dark|light)"([^>]*)>}{
    my ($pre, $url, $post) = ($1, $2, $3);
    '<img class="star-history star-history-dark"' . $pre . 'src="' . $url . '&amp;theme=dark"' . $post . '>'
    . '<img class="star-history star-history-light"' . $pre . 'src="' . $url . '&amp;theme=light"' . $post . '>'
}ges;
print $data;
PERLEOF

CLEAN_BODY=$(echo "$CLEAN_BODY" | perl "$STAR_FIX_SCRIPT")
rm -f "$STAR_FIX_SCRIPT"

# Transform FlowCharts section into a grid of buttons (opens modal)
CLEAN_BODY=$(echo "$CLEAN_BODY" | perl -0777 -pe '
s|<h4[^>]*>([^<]+)</h4>\s*<p>(<img[^>]+>)</p>|<button class="fc-item" type="button" onclick="openFC(this)"><span class="fc-label">$1</span>$2</button>|gs;
s|(<h2[^>]*>.*?FlowCharts.*?</h2>)\s*((?:<button class="fc-item"[^>]*>.*?</button>\s*)+)|$1<div class="fc-grid">$2</div>|s;
')

# Extract h2 sections for the navigation sidebar (icons included)
NAV_MENU=$(echo "$CLEAN_BODY" | perl -ne '
    if (/<h2[^>]*id="([^"]*)"[^>]*>(.*?)<\/h2>/) {
        my ($id, $inner) = ($1, $2);
        $inner =~ s/^\s+|\s+$//g;
        print "<a href=\"#$id\" data-section=\"$id\">$inner</a>";
    }
')

# CDN assets
BOOTSTRAP_CSS="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
BOOTSTRAP_JS="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
ICONS_CSS="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
FONTS_CSS="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&family=IBM+Plex+Mono:wght@400;500&display=swap"

# Generate final HTML
cat > "$OUTPUT_HTML" <<EOF
<!DOCTYPE html>
<html lang="en" data-theme="dark" data-bs-theme="dark">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>The Pika's OSINT ToolBox</title>
<link rel="icon" href="https://i.postimg.cc/nrBLxLCX/image.png" type="image/x-icon">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="$FONTS_CSS" rel="stylesheet">
<link href="$BOOTSTRAP_CSS" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<link href="$ICONS_CSS" rel="stylesheet">
<style>
/* ---------------------------------------------------------------------------
   Theme tokens
   --------------------------------------------------------------------------- */
:root, [data-theme="dark"] {
  --bg: #0f1115;
  --surface: #16181d;
  --surface-hover: #1c1f26;
  --border: #2a2d35;
  --border-strong: #3a3e47;
  --text: #e6e8eb;
  --text-muted: #9aa0a6;
  --accent: #d4a017;
  --accent-hover: #e0b030;
  --accent-soft: rgba(212, 160, 23, 0.10);
  --link: #6ba3e8;
  --link-hover: #8bbaf0;
  --code-bg: #16181d;
  --shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.3);
  --shadow-md: 0 4px 12px rgba(0, 0, 0, 0.25);
  --syn-ex: #7ec699;
  --syn-st: #d6d68a;
  --syn-at: #e0a578;
  --syn-kw: #d98bb0;
  --syn-dt: #7cb8d4;
  --syn-dv: #b48ad4;
  --syn-er: #e08282;
  --syn-co: #8088a0;
  --syn-op: #d98bb0;
  --syn-va: #7ec699;
  --syn-nu: #b48ad4;
  --syn-cf: #d98bb0;
}
[data-theme="light"] {
  --bg: #ffffff;
  --surface: #f7f8fa;
  --surface-hover: #f0f2f5;
  --border: #e2e5ea;
  --border-strong: #c8ccd3;
  --text: #1a1d21;
  --text-muted: #5a6169;
  --accent: #a67c00;
  --accent-hover: #8a6800;
  --accent-soft: rgba(166, 124, 0, 0.10);
  --link: #1a5fb4;
  --link-hover: #0d4a94;
  --code-bg: #f4f5f7;
  --shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.04);
  --shadow-md: 0 4px 12px rgba(0, 0, 0, 0.08);
  --syn-ex: #1a7f37;
  --syn-st: #7a5b00;
  --syn-at: #b45309;
  --syn-kw: #a11a6a;
  --syn-dt: #0f6ba0;
  --syn-dv: #6b3fa0;
  --syn-er: #b91c1c;
  --syn-co: #6b7280;
  --syn-op: #a11a6a;
  --syn-va: #1a7f37;
  --syn-nu: #6b3fa0;
  --syn-cf: #a11a6a;
}

/* ---------------------------------------------------------------------------
   Layout tokens
   --------------------------------------------------------------------------- */
:root {
  --sidebar-min: 200px;
  --sidebar-max: 300px;
  --content-max: 1100px;
  --radius: 8px;
  --radius-sm: 6px;
  --font-sans: 'IBM Plex Sans', -apple-system, BlinkMacSystemFont, "Segoe UI", system-ui, sans-serif;
  --font-mono: 'IBM Plex Mono', "SFMono-Regular", Consolas, "Liberation Mono", Menlo, monospace;
}

* { box-sizing: border-box; }
html { scroll-behavior: smooth; scroll-padding-top: 1.5rem; }

:focus-visible {
  outline: 2px solid var(--accent);
  outline-offset: 2px;
  border-radius: 4px;
}

@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: .01ms !important;
    transition-duration: .01ms !important;
  }
  html { scroll-behavior: auto; }
}

/* ---------------------------------------------------------------------------
   Scrollbars (theme-aware)
   --------------------------------------------------------------------------- */
* {
  scrollbar-width: thin;
  scrollbar-color: var(--border-strong) var(--surface);
}
::-webkit-scrollbar { width: 10px; height: 10px; }
::-webkit-scrollbar-track { background: var(--surface); }
::-webkit-scrollbar-thumb {
  background: var(--border-strong);
  border-radius: 5px;
  border: 2px solid var(--surface);
}
::-webkit-scrollbar-thumb:hover { background: var(--accent); }
::-webkit-scrollbar-corner { background: var(--surface); }

body {
  margin: 0;
  background: var(--bg);
  color: var(--text);
  font-family: var(--font-sans);
  font-size: 16px;
  line-height: 1.65;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  transition: background-color .2s, color .2s;
  display: flex;
  min-height: 100vh;
}
a { color: var(--link); text-decoration: none; }
a:hover { color: var(--link-hover); text-decoration: underline; }

.icon-sym {
  color: var(--accent);
  font-size: 0.95em;
  vertical-align: -0.08em;
  margin-right: 0.15em;
}
.icon-warn {
  color: var(--accent);
  font-size: 1em;
  vertical-align: -0.1em;
  margin-right: 0.15em;
}

/* ---------------------------------------------------------------------------
   Sidebar
   --------------------------------------------------------------------------- */
.nav-sidebar {
  position: sticky;
  top: 0;
  flex-shrink: 0;
  width: max-content;
  min-width: var(--sidebar-min);
  max-width: var(--sidebar-max);
  height: 100vh;
  overflow-y: auto;
  padding: 4rem 1rem 1.25rem;
  background: var(--surface);
  border-right: 1px solid var(--border);
  z-index: 100;
}
.nav-sidebar a {
  display: flex;
  align-items: center;
  gap: 0.6rem;
  padding: 0.45rem 0.75rem;
  color: var(--text-muted);
  font-size: 0.875rem;
  border-radius: var(--radius-sm);
  margin-bottom: 1px;
  white-space: nowrap;
  transition: background-color .15s, color .15s;
}
.nav-sidebar a .bi {
  color: var(--text-muted);
  font-size: 0.9rem;
  flex-shrink: 0;
  width: 1em;
  text-align: center;
  transition: color .15s;
}
.nav-sidebar a:hover {
  color: var(--text);
  background: var(--surface-hover);
  text-decoration: none;
}
.nav-sidebar a:hover .bi { color: var(--accent); }
.nav-sidebar a.active {
  color: var(--text);
  background: var(--accent-soft);
  font-weight: 500;
}
.nav-sidebar a.active .bi { color: var(--accent); }

/* ---------------------------------------------------------------------------
   Main content
   --------------------------------------------------------------------------- */
main {
  flex: 1;
  min-width: 0;
  padding: 3rem 2.5rem 6rem;
}
.container {
  max-width: var(--content-max);
  margin: 0 auto;
}

/* ---------------------------------------------------------------------------
   Site header (hero)
   --------------------------------------------------------------------------- */
.site-header {
  margin-bottom: 3rem;
  padding-bottom: 2rem;
}
.hero {
  display: flex;
  align-items: flex-start;
  gap: 1.75rem;
}
img.logo {
  width: 140px;
  height: 140px;
  object-fit: contain;
  flex-shrink: 0;
  border-radius: 18px;
}
.hero-text {
  min-width: 0;
  padding-top: 0.25rem;
}
.hero-text h1 {
  font-size: clamp(1.5rem, 3vw, 2rem);
  font-weight: 700;
  margin: 0 0 0.35rem;
  letter-spacing: -0.02em;
  line-height: 1.2;
  color: var(--text);
}
.tagline {
  margin: 0;
  color: var(--text-muted);
  font-size: 0.95rem;
}
.badges {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin: 0.85rem 0 0;
}
.badges a { display: inline-flex; }
.badges img { height: 22px; display: block; }

/* ---------------------------------------------------------------------------
   Typography
   --------------------------------------------------------------------------- */
h2, h3, h4 { color: var(--text); font-weight: 700; letter-spacing: -0.01em; }

h2 {
  font-size: clamp(1.35rem, 2.5vw, 1.6rem);
  margin: 3.5rem 0 1.25rem;
  padding-bottom: 0.75rem;
  border-bottom: 1px solid var(--border);
  color: var(--text);
  display: flex;
  align-items: center;
  gap: 0.65rem;
  flex-wrap: wrap;
}
h2 .bi {
  color: var(--accent);
  font-size: 1.15em;
  line-height: 1;
  flex-shrink: 0;
}

h3 { font-size: 1.2rem; margin: 2rem 0 1rem; }
h4 { font-size: 1.05rem; margin: 1.75rem 0 0.75rem; color: var(--text-muted); }

p { margin: 1rem 0; }
ul, ol { padding-left: 1.5rem; margin: 1rem 0; }
li { margin-bottom: 0.5rem; }
li > ul, li > ol { margin: 0.5rem 0; }
hr { border: 0; border-top: 1px solid var(--border); margin: 2.5rem 0; }
#title-block-header { display: none; }

/* ---------------------------------------------------------------------------
   Callout (blockquote)
   --------------------------------------------------------------------------- */
blockquote {
  background: var(--accent-soft);
  border-left: 3px solid var(--accent);
  border-radius: 0 var(--radius-sm) var(--radius-sm) 0;
  padding: 1rem 1.25rem;
  margin: 1.5rem 0;
  color: var(--text);
}
blockquote p { margin: 0; }
blockquote strong, blockquote b { color: var(--accent); }

/* ---------------------------------------------------------------------------
   Code
   --------------------------------------------------------------------------- */
code {
  background: var(--code-bg);
  border: 1px solid var(--border);
  border-radius: 4px;
  padding: 0.1em 0.35em;
  font-family: var(--font-mono);
  font-size: 0.875em;
  word-break: break-word;
  overflow-wrap: anywhere;
}
pre {
  background: var(--code-bg);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  padding: 0.9rem 1rem;
  overflow-x: auto;
  margin: 0;
  font-size: 0.85rem;
  line-height: 1.55;
}
pre code {
  background: none;
  border: 0;
  padding: 0;
  font-size: inherit;
  word-break: normal;
  overflow-wrap: normal;
  white-space: pre;
}

.pre-wrap {
  position: relative;
  margin: 1.25rem 0;
}
.copy-btn {
  position: absolute;
  top: 0.5rem;
  right: 0.5rem;
  width: 2rem;
  height: 2rem;
  display: flex;
  align-items: center;
  justify-content: center;
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: var(--radius-sm);
  color: var(--text-muted);
  cursor: pointer;
  font-size: 0.85rem;
  opacity: 0;
  transition: opacity .15s, color .15s, border-color .15s;
  z-index: 1;
}
.pre-wrap:hover .copy-btn,
.pre-wrap:focus-within .copy-btn { opacity: 1; }
.copy-btn:hover { color: var(--accent); border-color: var(--accent); }
@media (hover: none) { .copy-btn { opacity: 1; } }

/* ---------------------------------------------------------------------------
   Syntax highlighting
   --------------------------------------------------------------------------- */
.sourceCode .ex { color: var(--syn-ex); }
.sourceCode .st { color: var(--syn-st); }
.sourceCode .at { color: var(--syn-at); }
.sourceCode .kw { color: var(--syn-kw); }
.sourceCode .dt { color: var(--syn-dt); }
.sourceCode .dv { color: var(--syn-dv); }
.sourceCode .er { color: var(--syn-er); }
.sourceCode .co { color: var(--syn-co); }
.sourceCode .op { color: var(--syn-op); }
.sourceCode .va { color: var(--syn-va); }
.sourceCode .nu { color: var(--syn-nu); }
.sourceCode .cf, .sourceCode .ot { color: var(--syn-cf); }

/* ---------------------------------------------------------------------------
   Star-history chart: CSS swaps the dark/light SVG on theme change
   --------------------------------------------------------------------------- */
.star-history-light { display: none; }
[data-theme="light"] .star-history-dark { display: none; }
[data-theme="light"] .star-history-light { display: inline; }

/* ---------------------------------------------------------------------------
   FlowCharts grid
   --------------------------------------------------------------------------- */
.fc-grid {
  display: grid;
  grid-template-columns: repeat(6, minmax(0, 1fr));
  gap: 1rem;
  margin: 2rem 0;
}
.fc-item {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  padding: 0.75rem;
  cursor: pointer;
  transition: border-color .15s, box-shadow .15s;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 0.5rem;
  font: inherit;
  color: inherit;
  text-align: center;
}
.fc-item:hover {
  border-color: var(--accent);
  box-shadow: var(--shadow-md);
}
.fc-item img {
  max-width: 100%;
  max-height: 110px;
  object-fit: contain;
  border-radius: 4px;
  display: block;
}
.fc-label {
  color: var(--text);
  font-weight: 500;
  font-size: 0.85rem;
}

/* ---------------------------------------------------------------------------
   Modal (FlowCharts lightbox)
   --------------------------------------------------------------------------- */
.fc-modal {
  position: fixed;
  inset: 0;
  background: rgba(0, 0, 0, 0.88);
  display: none;
  align-items: center;
  justify-content: center;
  padding: 2rem;
  z-index: 2000;
  backdrop-filter: blur(6px);
}
.fc-modal.open { display: flex; }
.fc-modal img {
  max-width: 95vw;
  max-height: 90vh;
  object-fit: contain;
  border-radius: var(--radius);
  box-shadow: 0 20px 60px rgba(0, 0, 0, 0.6);
}
.fc-modal-close {
  position: absolute;
  top: 1.25rem;
  right: 1.25rem;
  width: 2.5rem;
  height: 2.5rem;
  background: rgba(255, 255, 255, 0.1);
  border: 1px solid rgba(255, 255, 255, 0.2);
  border-radius: 50%;
  color: #fff;
  cursor: pointer;
  font-size: 1.1rem;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: background-color .15s;
}
.fc-modal-close:hover { background: rgba(255, 255, 255, 0.2); }

/* ---------------------------------------------------------------------------
   Fixed controls
   --------------------------------------------------------------------------- */
.theme-toggle,
.nav-toggle,
.back-to-top {
  position: fixed;
  width: 2.5rem;
  height: 2.5rem;
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  color: var(--text-muted);
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1rem;
  z-index: 200;
  box-shadow: var(--shadow-sm);
  transition: color .15s, border-color .15s, opacity .2s;
}
.theme-toggle { top: 1rem; right: 1rem; }
.theme-toggle:hover { color: var(--accent); border-color: var(--accent); }
.nav-toggle { top: 1rem; left: 1rem; display: none; }
.nav-toggle:hover { color: var(--accent); border-color: var(--accent); }
.back-to-top {
  bottom: 1.5rem;
  right: 1.5rem;
  width: 2.75rem;
  height: 2.75rem;
  border-radius: 50%;
  box-shadow: var(--shadow-md);
  opacity: 0;
  pointer-events: none;
}
.back-to-top.visible { opacity: 1; pointer-events: auto; }
.back-to-top:hover { color: var(--accent); border-color: var(--accent); }

.nav-backdrop {
  position: fixed;
  inset: 0;
  background: rgba(0, 0, 0, 0.5);
  opacity: 0;
  pointer-events: none;
  transition: opacity .2s;
  z-index: 99;
}
.nav-backdrop.open { opacity: 1; pointer-events: auto; }

/* ---------------------------------------------------------------------------
   Responsive
   --------------------------------------------------------------------------- */
@media (max-width: 992px) {
  body { display: block; }
  .nav-sidebar {
    position: fixed;
    top: 0;
    left: 0;
    height: 100vh;
    width: max-content;
    min-width: 240px;
    max-width: 85vw;
    transform: translateX(-100%);
    transition: transform .25s ease;
    box-shadow: var(--shadow-md);
  }
  .nav-sidebar.open { transform: translateX(0); }
  .nav-toggle { display: flex; }
  main { padding: 4.5rem 1.25rem 4rem; }
  .fc-grid { grid-template-columns: repeat(3, minmax(0, 1fr)); }
}
@media (max-width: 640px) {
  .hero { gap: 1rem; }
  img.logo { width: 90px; height: 90px; border-radius: 12px; }
  .hero-text h1 { font-size: 1.35rem; }
}
@media (max-width: 480px) {
  .fc-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); }
  .fc-item img { max-height: 80px; }
}
</style>
</head>
<body>

<button class="nav-toggle" id="nav-toggle" type="button" aria-label="Toggle navigation">
  <i class="bi bi-list"></i>
</button>

<button class="theme-toggle" id="theme-toggle" type="button" aria-label="Toggle theme">
  <i class="bi bi-sun"></i>
</button>

<button class="back-to-top" id="back-to-top" type="button" aria-label="Back to top">
  <i class="bi bi-arrow-up"></i>
</button>

<div class="nav-backdrop" id="nav-backdrop"></div>

<nav class="nav-sidebar" id="nav-sidebar">
$NAV_MENU
</nav>

<main>
<div class="container">

<header class="site-header">
<div class="hero">
$LOGO_IMG
<div class="hero-text">
<h1>The Pika's OSINT ToolBox ⚡️</h1>
<p class="tagline">Curated OSINT tools and resources — quality over quantity, free tools only.</p>
<p class="badges">
<a href="https://github.com/passthesh3ll/The-Pika-s-OSINT-ToolBox" target="_blank" rel="noopener">
<img src="https://img.shields.io/badge/Repository-GitHub-d4a017?style=flat-square&logo=github&logoColor=white" alt="GitHub repository">
</a>
<a href="https://github.com/passthesh3ll/The-Pika-s-OSINT-ToolBox/commits" target="_blank" rel="noopener">
<img src="https://img.shields.io/github/last-commit/passthesh3ll/The-Pika-s-OSINT-ToolBox?style=flat-square&color=d4a017&label=Last%20update&logo=github&logoColor=white" alt="Last update">
</a>
<a href="https://github.com/passthesh3ll/The-Pika-s-OSINT-ToolBox/stargazers" target="_blank" rel="noopener">
<img src="https://img.shields.io/github/stars/passthesh3ll/The-Pika-s-OSINT-ToolBox?style=flat-square&color=d4a017&label=Stars&logo=github&logoColor=white" alt="GitHub stars">
</a>
</p>
</div>
</div>
</header>

$CLEAN_BODY

</div>
</main>

<div class="fc-modal" id="fc-modal" onclick="if(event.target===this)closeFC()">
<button class="fc-modal-close" type="button" onclick="closeFC()" aria-label="Close">
<i class="bi bi-x-lg"></i>
</button>
<img id="fc-modal-img" src="" alt="">
</div>

<script src="$BOOTSTRAP_JS" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<script>
/* Theme toggle with localStorage persistence */
(function () {
  var root = document.documentElement;
  var stored = localStorage.getItem('theme');
  var theme = stored === 'light' ? 'light' : 'dark';
  root.setAttribute('data-theme', theme);
  root.setAttribute('data-bs-theme', theme);
  setIcon(theme);

  document.getElementById('theme-toggle').addEventListener('click', function () {
    var next = root.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
    root.setAttribute('data-theme', next);
    root.setAttribute('data-bs-theme', next);
    localStorage.setItem('theme', next);
    setIcon(next);
  });

  function setIcon(t) {
    document.querySelector('#theme-toggle i').className =
      t === 'dark' ? 'bi bi-sun' : 'bi bi-moon-stars';
  }
})();

/* Mobile navigation drawer */
(function () {
  var sidebar = document.getElementById('nav-sidebar');
  var backdrop = document.getElementById('nav-backdrop');
  var toggle = document.getElementById('nav-toggle');
  function open() {
    sidebar.classList.add('open');
    backdrop.classList.add('open');
    document.body.style.overflow = 'hidden';
  }
  function close() {
    sidebar.classList.remove('open');
    backdrop.classList.remove('open');
    document.body.style.overflow = '';
  }
  toggle.addEventListener('click', function () {
    if (sidebar.classList.contains('open')) close();
    else open();
  });
  backdrop.addEventListener('click', close);
  sidebar.addEventListener('click', function (e) {
    if (e.target.tagName === 'A') close();
  });
})();

/* FlowCharts modal */
function openFC(el) {
  var img = el.querySelector('img');
  if (!img) return;
  document.getElementById('fc-modal-img').src = img.src;
  document.getElementById('fc-modal-img').alt = img.alt || '';
  document.getElementById('fc-modal').classList.add('open');
  document.body.style.overflow = 'hidden';
}
function closeFC() {
  document.getElementById('fc-modal').classList.remove('open');
  document.body.style.overflow = '';
}
document.addEventListener('keydown', function (e) {
  if (e.key === 'Escape') closeFC();
});

/* Back-to-top button visibility on scroll */
(function () {
  var btn = document.getElementById('back-to-top');
  function update() {
    btn.classList.toggle('visible', window.scrollY > 400);
  }
  window.addEventListener('scroll', update, { passive: true });
  btn.addEventListener('click', function () {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  });
  update();
})();

/* Sidebar active-section highlight and smooth scroll */
(function () {
  var navLinks = document.querySelectorAll('.nav-sidebar a');
  var sections = [];
  navLinks.forEach(function (link) {
    var id = link.getAttribute('href').substring(1);
    var section = document.getElementById(id);
    if (section) sections.push({ el: section, link: link });
  });

  function updateActive() {
    var scrollPos = window.scrollY + 150;
    var current = sections[0];
    for (var i = 0; i < sections.length; i++) {
      if (sections[i].el.offsetTop <= scrollPos) current = sections[i];
    }
    navLinks.forEach(function (l) { l.classList.remove('active'); });
    if (current) current.link.classList.add('active');
  }

  window.addEventListener('scroll', updateActive, { passive: true });
  updateActive();

  navLinks.forEach(function (link) {
    link.addEventListener('click', function (e) {
      e.preventDefault();
      var target = document.getElementById(this.getAttribute('href').substring(1));
      if (target) {
        target.scrollIntoView({ behavior: 'smooth', block: 'start' });
        history.replaceState(null, '', this.getAttribute('href'));
      }
    });
  });
})();

/* Copy buttons on code blocks */
(function () {
  document.querySelectorAll('.container > pre, .container > .sourceCode').forEach(function (el) {
    var wrap = document.createElement('div');
    wrap.className = 'pre-wrap';
    el.parentNode.insertBefore(wrap, el);
    wrap.appendChild(el);

    var btn = document.createElement('button');
    btn.className = 'copy-btn';
    btn.type = 'button';
    btn.setAttribute('aria-label', 'Copy code');
    btn.innerHTML = '<i class="bi bi-clipboard"></i>';
    btn.addEventListener('click', function () {
      var codeEl = el.querySelector('code') || el;
      navigator.clipboard.writeText(codeEl.textContent).then(function () {
        btn.innerHTML = '<i class="bi bi-check-lg"></i>';
        setTimeout(function () { btn.innerHTML = '<i class="bi bi-clipboard"></i>'; }, 1500);
      });
    });
    wrap.appendChild(btn);
  });
})();
</script>
</body>
</html>
EOF

echo "HTML generated: $OUTPUT_HTML"