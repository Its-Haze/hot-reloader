#!/usr/bin/env bash

if ! command -v inotifywait &> /dev/null; then
  echo "please install inotify-tools"
  exit 1
fi

if [ "$#" -lt 1 ]; then
  echo "Usage: $(basename $0) <script> [...additional files to watch]"
  exit 1
fi

# Command to execute
cmd="$1"
shift  # Remove the command from the arguments list

# Additional files to watch
watch_files=("$cmd" "$@")

while inotifywait -q -e close_write "${watch_files[@]}"; do

    # Clear the screen
    # Mimic CTRL+L behavior
    echo -ne "\033[2J\033[H"

    # Determine file extension
    extension="${cmd##*.}"
    
    case "$extension" in
        sh)
            # It's a shell script
            bash "$cmd"
            ;;
        py)
            # It's a Python script
            python "$cmd"
            ;;
        *)
            echo "Unsupported file type: $extension"
            ;;
    esac
done
