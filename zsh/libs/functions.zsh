# display statistics of zsh command history
function zsh_stats() {
  fc -l 1 \
    | awk '{ CMD[$2]++; count++; } END { for (a in CMD) print CMD[a] " " CMD[a]*100/count "% " a }' \
    | grep -v "./" | sort -nr | head -n 20 | column -c3 -s " " -t | nl
}

# select song from library
function song() {
  SONG=$(fd --type f . "$HOME/Music" | fzf)
  if [ -z "$SONG" ]; then
    echo "No song selected"
  else
    open -a IINA "$SONG"
  fi
}

function album() {
  ALBUM=$(fd -e "flac" --type f . "$HOME/Music" --exec dirname {} | sort -u | grep -v " - Single" | fzf)
  if [ -z "$ALBUM" ]; then
    echo "No album selected"
  else
    open -a IINA "$ALBUM"
  fi
}


function app() {
  FILE=$((ls /Applications && ls ~/Applications) | fzf)
  if [ -z "$FILE" ]; then
    echo "No file selected"
  else
    open -a "$FILE"
  fi
}




