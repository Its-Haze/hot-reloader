# Bash & Python Hot Reloader

Welcome to something i wrote when i was bored. 

So, you've somehow convinced yourself that manually executing your scripts is the wrong way to go. Let me present to you, the hot reloader.. WHOAAAOW

Who needs web development live reload when you can have this for scripts, right?
Hope you like it.

## Features

- **Save time**: Because hitting the up arrow and Enter in your terminal is just too easy.
- **Bash and Python files are supported**: Submit a PR if you would like to add more files to hot reload.


## Getting Started

1. **Install inotify-tools**: 
    - On Debian/Ubuntu: `sudo apt-get install inotify-tools`
    - On Arch Linux: `sudo pacman -S inotify-tools`
    - For others: Please consult the sacred texts of your distro's package manager.

2. **Install hot-reloader**:
    ```bash
    sudo wget -O /usr/local/bin/hot-reloader https://raw.githubusercontent.com/its-haze/hot-reloader/master/hot-reloader.sh && sudo chmod +x /usr/local/bin/hot-reloader
    ```

## Usage

``hot-reloader <script> [...additional files to watch]``

- `<script>`: The script you want to automatically run on save. We support Bash (`.sh`) and Python (`.py`), because we're inclusive like that.
- `[...additional files to watch]`: List of files you're paranoid about and want to watch over, because who trusts `Ctrl+S` alone?

## Limitations

- **Script Speed**: If your script runs faster than the Millennium Falcon on a good day, it might finish before we even get a chance to kill it. Just so you know.
- **File Types**: Currently supports `.sh` and `.py`. If you're using anything else, consider this a personal challenge to convert it.

## Contributing

Found a way to make this even more overkill? Brilliant. Fork it, branch it, push it, pull it, bop it, twist it, and then pull request it. We might even merge it before the heat death of the universe.

