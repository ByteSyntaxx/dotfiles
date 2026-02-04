function fish_aliases
    ## SET SOME ALIASES ##

    # shell aliases
    alias clear='printf "\x1bc"'
    alias ls="eza -lah --color=always --icons --group-directories-first"
    alias lsdir="eza -dlah */ --color=always --icons --group-directories-first"

    # change the behaviour of mv, cp, rm & ip
    alias mv="mv -i"                                                                                  # prompt before overwrite
    alias cp="cp -i"                                                                                  # prompt before overwrite
    alias rm="rm -i"                                                                                  # prompt before every removal
    alias ip='ip -c'                                                                                  # enable colors in ip command
    alias grep="grep --color=auto"                                                                    # enable color in grep output
    ## PACKAGE MANAGEMENT ##

    # general package management
    alias install="paru -S"                                                                           # install an package
    alias remove="paru -Rns"                                                                          # remove an package with dependencies
    alias search="paru -Ss"                                                                           # search packages
    alias pkginfo="paru -Sii"                                                                         # show package info
    alias clrpkgcache="paccache -rk3 && paccache -ruk0"                                               # clears the pacman cache
    alias clrpkgs="sudo pacman -Rns $(pacman -Qdtq)"                                                  # removes unused packages
    alias unlock="sudo rm /var/lib/pacman/db.lck"                                                     # remove pacman lock 

    ## SYSTEM MANAGEMENT ##
    alias updateall="paru -Syyu; paru -Scc"                                                           # update system & clear cache
    alias updatepkglist="paru -Syu"                                                                   # update package lists
    alias rlfontcache="sudo fc-cache -fv"                                                             # reload the system font cache
    alias cleartrash="rm -rf ~/.local/share/Trash/files && mkdir ~/.local/share/Trash/files"          # clears the .local/share/Trash directory
    alias microcode="grep . /sys/devices/system/cpu/vulnerabilities/*"                                # check vulnerabilities microcode 
    alias bckupskel="cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)"                      # backup /etc/skel to hidden folder in home/user

    ## GRUB MANAGEMENT ##
    alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"                                     # grup update
    alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"                                     # grup update
    alias install-grub-efi="sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi"          # grub issue 08/2022

    ## MIRROR MANAGEMENT ##
    alias backupmirror="sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak"                # backup current mirrorlist
    alias restoremirror="sudo cp /etc/pacman.d/mirrorlist.bak /etc/pacman.d/mirrorlist"               # restore backed up mirrorlist
    alias fastmirror="sudo reflector --verbose --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist && sudo pacman -Syy"

end
