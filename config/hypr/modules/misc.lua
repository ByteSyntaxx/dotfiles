hl.config({
    misc = {
        disable_hyprland_logo = true
    }
})

hl.config({
    master = {
        mfact = 0.5
    },
})

-- layer rules
hl.layer_rule({match= {namespace="waybar"}, blur = true})

-- window rules
hl.window_rule({match = {class="*"}, tile = true})
hl.window_rule({match = {class="(nwg-look|Spotify|obsidian|discord)"}, opacity = "0.8 1.0"})

