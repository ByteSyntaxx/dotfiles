require("modules.animations")
require("modules.keybinds")
require("modules.keyboard")
require("modules.misc")
require("modules.monitors")
require("modules.startup")

-- decoration settings
hl.config({
    decoration = {
        rounding       = 8,

        shadow = {
            enabled      = true,
            range        = 10,
            render_power = 100,
            color        = "0xFF88c0d0",
            color_inactive = "0xFF2e3440"
        },

        blur = {
            enabled   = true,
            size      = 8,
            passes    = 3
        },
    }
})

-- general settings
hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 5,
        border_size = 3,
        col = {
            active_border = {colors={"0xFF88c0d0"}},
            inactive_border = {colors={"0xFF2e3440"}}
        },
        layout = "master"
    }
})