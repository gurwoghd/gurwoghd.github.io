#!/usr/bin/env bash
# Build assets/cv.pdf from _cv/cv.md  (needs pandoc + Microsoft Edge or Chrome)
set -e
cd "$(dirname "$0")"
HERE_W="$(pwd -W)"; ROOT_W="$(cd .. && pwd -W)"
pandoc cv.md -t html5 -s --metadata pagetitle="Hyeokjae Hong" -c cv.css --embed-resources --standalone -o cv.html
for b in "/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe" "/c/Program Files/Google/Chrome/Application/chrome.exe"; do
  [ -x "$b" ] && BROWSER="$b" && break
done
rm -f ../assets/cv.pdf
"$BROWSER" --headless --disable-gpu --no-pdf-header-footer --print-to-pdf="$ROOT_W/assets/cv.pdf" "file:///$HERE_W/cv.html" >/dev/null 2>&1 || true
for i in 1 2 3 4 5 6 7 8 9 10; do [ -s ../assets/cv.pdf ] && break; sleep 1; done
rm -f cv.html
[ -s ../assets/cv.pdf ] && echo "Wrote assets/cv.pdf" || { echo "PDF build failed"; exit 1; }
