## CHANGE SOME FISH SETTINGS ##
set fish_greeting ""

set PATH "$HOME/.local/bin:$PATH"

# Colorize man pages

# Begin blinking text mode
# I just use bold red here since my terminal has blinking disabled
set -x LESS_TERMCAP_mb (printf '\e[1;34m')

# Begin bold text mode
set -x LESS_TERMCAP_md (printf '\e[1;34m')

# End all special formatting started by mb/md/etc.
set -x LESS_TERMCAP_me (printf '\e[0m')

# End standout mode
set -x LESS_TERMCAP_se (printf '\e[0m')

# Begin standout mode
# search results - bold, blue foreground
set -x LESS_TERMCAP_so (printf '\e[1;34m')

# End underline mode
set -x LESS_TERMCAP_ue (printf '\e[0m')

# Begin underline mode
# underline and bold green
set -x LESS_TERMCAP_us (printf '\e[4;1;32m')

# Begin reverse-video mode
set -x LESS_TERMCAP_mr (printf '\e[7m')

# Begin dim/half-bright mode
set -x LESS_TERMCAP_mh (printf '\e[2m')

# Finally wire up `man` to use `less`
# this is usually the default but let's just be sure
set -x MANPAGER 'less'

# For all using Arch try export MANROFFOPT='-c' this activates Overstrike for me
set -x MANROFFOPT '-c'

fish_add_path /home/bytesyntaxx/.spicetify

fish_aliases
clear & fastfetch
