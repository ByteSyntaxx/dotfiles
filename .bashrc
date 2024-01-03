#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

GREEN="\e[1;32m"
CYAN="\e[1;36m"
NC='\033[0m'
export PS1="${CYAN}[\W]${GREEN} ❱❱❱${NC} "
source .config/shell/aliases.sh
