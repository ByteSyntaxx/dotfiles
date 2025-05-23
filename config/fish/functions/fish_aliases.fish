function fish_aliases
    ## SET SOME ALIASES ##

    # change "ls" to "eza"
    alias ls="eza -lah --color=always --icons --group-directories-first"
    alias lsdir="eza -dlah */ --color=always --icons --group-directories-first"

    # change the behaviour of mv, cp, rm & ip
    alias mv="mv -i"                # prompt before overwrite
    alias cp="cp -i"                # prompt before overwrite
    alias rm="rm -i"                # prompt before every removal
    alias ip='ip -c'                # enable colors in ip command
    alias grep="grep --color=auto"  # enable color in grep output

    # shell aliases
    alias clear='printf "\x1bc"'
    
    ## PACKAGE MANAGEMENT ##

    # installing & removing packages
    alias sps="sudo pacman -S"                                                                        # install packages
    alias sprns="sudo pacman -Rns"                                                                    # remove packages with dependencies
    alias spsii="sudo pacman -Sii"                                                                    # show package info

    # updating the packages and clear pacman cache...
    alias aurupdate="paru -Sua"                                                                       # update only aur packages
    alias allupdate="paru -Syyu"                                                                      # update standard & aur packages
    alias stdupdate="sudo pacman -Syyu"                                                               # update only standard packages
    alias pacunlock="sudo rm /var/lib/pacman/db.lck"                                                  # remove pacman lock
    alias rmcache="paccache -rk3 && paccache -ruk0"                                                   # clears the pacman cache
    alias rup="sudo pacman -Rns $(pacman -Qdtq)"                                                      # removes unused packages

    ## MIRROR MANAGEMENT ##
    alias fastmirror="sudo reflector --verbose --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist && sudo pacman -Syy"
    alias backupmirror="sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak"
    alias restoremirror="sudo cp /etc/pacman.d/mirrorlist.bak /etc/pacman.d/mirrorlist"

    ## SYSTEM MANAMENT ##

    # updating the system
    alias updateparu="paru -Syu --noconfirm"                                                          # update paru package list
    alias updatesys="sudo pacman -Syyu --noconfirm"                                                   # update whole system
    alias updatekeys="sudo pacman -Syu --noconfirm"                                                   # update pacman package list

    # system tools
    alias rlfontcache="sudo fc-cache -fv"                                                             # add new fonts
    alias clearcache="rm -rf $HOME/.cache/*"                                                          # clears the .cache directory
    alias cleartrash="rm -rf ~/.local/share/Trash/files && mkdir ~/.local/share/Trash/files"          # clears the .local/share/Trash directory
    alias microcode="grep . /sys/devices/system/cpu/vulnerabilities/*"                                # check vulnerabilities microcode 
    alias bupskel="cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)"                        # backup /etc/skel to hidden folder in home/user


    ## GRUB MANAGEMENT ##
    alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"                                     # grup update
    alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"                                     # grup update
    alias install-grub-efi="sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi"          # grub issue 08/2022
end
