local acidthrower_sticker = table.deepcopy(data.raw.sticker["slowdown-sticker"])
local aps_animation = table.deepcopy(data.raw.sticker["acid-sticker-big"].animation)

acidthrower_sticker.name = "acid-player-sticker"
acidthrower_sticker.animation = aps_animation
acidthrower_sticker.duration_in_ticks = 600
acidthrower_sticker.flags = {"breaths-air"}
acidthrower_sticker.damage_per_tick = nil
acidthrower_sticker.target_movement_modifier = 0.8


data:extend({acidthrower_sticker})
