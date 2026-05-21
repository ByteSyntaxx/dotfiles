require("configs.animations")
require("configs.keybinds")
require("configs.keyboard")
require("configs.misc")
require("configs.monitors")
require("configs.startup")

-- decoration settings
hl.config({
    decoration = {
        rounding       = 8,

        shadow = {
            enabled      = true,
            range        = 10,
            render_power = 100,
            color        = "0xFF98971A",
            color_inactive = "0xFF1D2021"
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
            active_border = {colors={"0xFF98971A"}},
            inactive_border = {colors={"0xFF1D2021"}}
        },
        layout = "master"
    }
})