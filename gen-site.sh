#!/bin/bash

# md2bootstrap.sh - Markdown to HTML bootstrap

set -euo pipefail

[[ $# -ne 2 ]] && { echo "Usage: $0 <input.md> <output.html>"; exit 1; }
[[ -f "$1" ]] || { echo "Error: '$1' not found"; exit 1; }

INPUT_MD="$1"
OUTPUT_HTML="$2"
mkdir -p "$(dirname "$OUTPUT_HTML")"

# Convert Markdown → HTML
FULL_HTML=$(pandoc "$INPUT_MD" --from=gfm --to=html --standalone --highlight-style=monochrome --wrap=none --metadata title="The Pika's OSINT ToolBox ⚡️")

# Extract body content
BODY_CONTENT=$(echo "$FULL_HTML" | sed -n '/<body[^>]*>/,/<\/body>/p' | sed '1s/.*<body[^>]*>//; $s/<\/body>.*//')

# Remove first <h1> (duplicate title)
BODY_NO_TITLE=$(echo "$BODY_CONTENT" | awk '/<h1[^>]*>.*<\/h1>/ {next} {print}')

# Remove duplicate logo: <img src="...pika-osint-circle.png" alt="image" />
CLEAN_BODY=$(echo "$BODY_NO_TITLE" | sed -E ':a; N; $!ba; s/<img[^>]*src="https:\/\/i\.postimg\.cc\/NfRjWRNj\/pika-osint-circle\.png"[^>]*alt="image"[^>]*\/>//g')

# Replace Warning
CLEAN_BODY=$(echo "$CLEAN_BODY" | sed 's/\[!WARNING\]/⚠️ <b>WARNING<\/b>/g')

# Bootstrap CDN
BOOTSTRAP_CSS="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
BOOTSTRAP_JS="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
ICONS_CSS="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"

# Generate final HTML
cat > "$OUTPUT_HTML" <<EOF
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>The Pika's OSINT ToolBox ⚡️</title>
    <link rel="icon" href="https://i.postimg.cc/nrBLxLCX/image.png" type="image/x-icon">
    <link href="$BOOTSTRAP_CSS" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link href="$ICONS_CSS" rel="stylesheet">
    <style>
        body { background:#121212; color:#e0e0e0; padding:2rem 1rem; font-family:system-ui,-apple-system,sans-serif; display:flex; justify-content:center; }
        .container { max-width:none; width:70%; }
        h1, h2, h3, h4 { margin-top:2rem; color:#ffca28; text-align:center; }
        h1 { font-size:2.5rem; margin-bottom:0.5rem; }
        img.logo { display:block; margin:1rem auto 2rem; max-width:200px; border-radius:50%; border:3px solid #e6b800; }
        pre { background:#1e1e1e; border:1px solid #333; border-radius:.5rem; padding:1rem; overflow-x:auto; font-size:.9rem; margin:1.5rem auto; max-width:90%; }
        code { padding:.2rem .4rem; border-radius:.3rem; font-size:.9em; }
        blockquote { border-left:4px solid #e6b800; padding:1rem; font-style:italic; color:#e6b800; background:#1a1a1a; border-radius:.4rem; margin:1.5rem auto; max-width:90%; text-align:left; }
        ul, ol { padding-left:1.5rem; margin:1rem auto; max-width:90%; }
        li { margin-bottom:.75rem; }
        a { color:#42a5f5; text-decoration:none; }
        a:hover { text-decoration:underline; }
        img[alt="image"] { display:block !important; margin:2rem auto !important; max-width:200px !important; border:2px solid #444 !important; border-radius:.5rem !important; }
		#description + p {max-width: calc(90% - 5px); margin-left: auto; margin-right: auto; box-sizing: border-box; }
		pre, .sourceCode {margin-top: 0px;margin-bottom: 0px;}
        .container > * { text-align:center; }
        .container > ul, .container > ol, .container > pre, .container > blockquote { text-align:left; }
        /*Dark scrollbars Firefox*/
        * {
		  scrollbar-width: thin;
		  scrollbar-color: #555 #2a2a2a;
		}
		/*Dark scrollbars Chrome, Edge, Safari */
		::-webkit-scrollbar {
		  width: 8px;
		  height: 8px;
		}
		::-webkit-scrollbar-track {
		  background: #2a2a2a;
		  border-radius: 4px;
		}
		/* Syntax Highlighting */
		.sourceCode {overflow-x: auto; font-family: 'Fira Code', 'Consolas', monospace; font-size: .9rem; line-height: 1.4;}
		.sourceCode.bash code,
		.sourceCode.html code,
		.sourceCode.css code,
		.sourceCode.js code,
		.sourceCode.python code { color: #d0d0d0; }
		.sourceCode .ex { color: #88d4a0; }
		.sourceCode .st { color: #e6e89e; }
		.sourceCode .at { color: #f0b387; }
		.sourceCode .kw { color: #e89eb8; }
		.sourceCode .dt { color: #a0d8e8; }
		.sourceCode .dv { color: #c7a8e0; }
		.sourceCode .er { color: #e88c8c; }
		.sourceCode .co { color: #9a9fb8; }
		.sourceCode .op { color: #e89eb8; }
		.sourceCode .va { color: #88d4a0; }
		.sourceCode .nu { color: #c7a8e0; }
		.sourceCode .cf, .sourceCode .ot { color: #e89eb8; }	
    </style>
</head>
<body>
    <div class="container">
        <h1>The Pika's OSINT ToolBox ⚡️</h1>
        <img src="https://i.postimg.cc/NfRjWRNj/pika-osint-circle.png" alt="Pika OSINT Logo" class="logo">
        <p>
		  <a href="https://github.com/passthesh3ll/The-Pika-s-OSINT-ToolBox" target="_blank">
		   <img src="https://img.shields.io/badge/Repo-⁠The--Pika--s--OSINT--ToolBox-yellow?logo=github" alt="GitHub repo">
		  </a>
		  <br>
		  <a href="https://github.com/passthesh3ll/The-Pika-s-OSINT-ToolBox/commits" target="_blank">
			<img src="https://img.shields.io/github/last-commit/passthesh3ll/The-Pika-s-OSINT-ToolBox?color=yellow&label=Last%20update&logo=github" alt="Last Update">
		  </a>
		  <br>
		  <a href="https://github.com/passthesh3ll/The-Pika-s-OSINT-ToolBox/stargazers" target="_blank">
			<img src="https://img.shields.io/github/stars/passthesh3ll/The-Pika-s-OSINT-ToolBox?color=yellow&label=Stars&logo=github" alt="GitHub stars">
		  </a>
		</p>
        $CLEAN_BODY
    </div>
    <script src="$BOOTSTRAP_JS" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>
EOF

echo "HTML generated: $OUTPUT_HTML"