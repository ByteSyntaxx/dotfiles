## LOAD THE .ZSHENV FILE ##
source .zshenv

## LOAD ALL ZSH PLUGINS ##
source ~/.zsh/plugins/completions/zsh-completions.plugin.zsh
source ~/.zsh/plugins/suggestions/zsh-autosuggestions.plugin.zsh
source ~/.zsh/plugins/highlighting/zsh-syntax-highlighting.plugin.zsh

if [ -f $ZSH/oh-my-zsh.sh ]; then
  source $ZSH/oh-my-zsh.sh
fi

## CLEANING HOME FOLDER ##
if [ -f "/home/bytesyntaxx/.zcompdump-arcolinux-5.9" ]; then
  rm -rf ~/.zcompdump
  rm -rf ~/.zcompdump-arcolinux-5.9
  rm -rf ~/.zcompdump-arcolinux-5.9.zwc
fi

## ARCOLINUX SETTINGS ##
export PAGER='most'
export PATH="$HOME/.local/bin:$PATH"

unsetopt SHARE_HISTORY

## SET SOME ALIASES ##

# editor alias 
alias vim='nvim'

# change 'ls' to 'exa'
alias ls='exa -lah --color=always --icons --group-directories-first'
alias lsdir='exa -dlah */ --color=always --icons --group-directories-first'

# colorize grep output
alias grep='grep --color=auto'

# package management
alias stdupdate='sudo pacman -Syyu'                                                               # update only standard packages
alias aurupdate='paru -Sua'                                                                       # update only aur packages
alias allupdate='paru -Syyu'                                                                      # update standard & aur packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'                                                  # remove unused packages
alias pacunlock='sudo rm /var/lib/pacman/db.lck'                                                  # remove pacman lock

# pacman
alias sps='sudo pacman -S'                                                                        # install packages
alias spr='sudo pacman -R'                                                                        # remove packages
alias sprs='sudo pacman -Rs'                                                                      # remove package recursively
alias spsii='sudo pacman -Sii'                                                                    # show package info

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"

# system
alias rmlogoutlock="sudo rm /tmp/arcologout.lock"                                                 # arcolinux logout unlock
alias whichvga="/usr/local/bin/arcolinux-which-vga"                                               # current working graphicscard

alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"                                     # grup update
alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"                                     # grup update
alias install-grub-efi="sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi"          # grub issue 08/2022

alias rlfontcache='sudo fc-cache -fv'                                                             # add new fonts
alias paruskip='paru -S --mflags --skipinteg'                                                     # skip integrity check
alias audio="pactl info | grep 'Server Name'"                                                     # audio check pulseaudio or pipewire
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'                                # check vulnerabilities microcode 
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'                        # backup /etc/skel to hidden folder in home/user

pfetch
