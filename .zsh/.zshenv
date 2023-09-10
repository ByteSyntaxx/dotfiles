## DO SOME PFETCH SETTINGS ##
export PF_COL1="4"                                                  # PFETCH VARIABLE COLOR
export PF_COL2="9"                                                  # PFETCH INFORMATION COLOR
export PF_COL3="6"                                                  # PFETCH TITLE COLOR
export PF_ASCII="arco"                                              # PFETCH ASCII SYMBOL
export PF_INFO="ascii title os host kernel uptime pkgs memory"   # SETTING THE INFORMATION DISPLAY

## PATH TO oh-my-zsh INSTALLATION ##
export ZSH=/usr/share/oh-my-zsh/

## SET THE oh-my-zsh THEME ##
ZSH_THEME="robbyrussell"

## ALIASES ##

# shell aliases
alias reload='exec zsh'
alias clearhist='cat /dev/null > ~/.zsh_history && history -c'
alias clearcache="rm -rf $HOME/.cache/*"

# updating the system
alias updateparu="paru -Syu --noconfirm"                        # update paru package list
alias updatesys='sudo pacman -Syyu --noconfirm'
alias updatekeys='sudo pacman -Syu --noconfirm'

## NAVIGATION ##
up () {
  local d=""
  local limit="$1"

  # set default value to 1
  if [ -z "$limit" ] || [ "$limit" -le 0 ]; then; limit=1; fi

  for ((i=1;i<=limit;i++)); do; d="../$d"; done

  # perform cd. show error if failed
  if ! cd "$d"; then; echo "Couldn't go up $limit dirs."; fi
}
