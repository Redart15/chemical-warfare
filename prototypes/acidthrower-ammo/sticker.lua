local sticker = table.deepcopy(data.raw.sticker["slowdown-sticker"])
local sticker_animation = table.deepcopy(data.raw.sticker["acid-sticker-big"].animation)

sticker.name = "acid-player-sticker"
sticker.animation = sticker_animation
sticker.duration_in_ticks = 600
sticker.flags = { "breaths-air" }
sticker.damage_per_tick = nil
sticker.target_movement_modifier = 0.8

data:extend({ sticker })
