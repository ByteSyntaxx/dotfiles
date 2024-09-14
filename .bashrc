#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

GREEN="\e[1;32m"
CYAN="\e[1;36m"
export PS1="${CYAN}[\W]${GREEN} ❱❱❱\033[0m] "
source .config/shell/aliases.sh
