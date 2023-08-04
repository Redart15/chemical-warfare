-- sticker of fire for controll with acid animation

local acid_fire_sticker = table.deepcopy(data.raw.sticker["fire-sticker"])
local animation = table.deepcopy(data.raw.sticker["acid-sticker-big"].animation)

acid_fire_sticker.name = "acid-fire-sticker"
acid_fire_sticker.animation = animation
acid_fire_sticker.damage_per_tick = {amount = 50000, type = "acid"} -- affects the sticker damage


-- remove:
    --"spread_fire_entity"
    --"fire_spread_cooldown"
    --"fire_spread_radius"

local toPurge = {"spread_fire_entity","fire_spread_cooldown","fire_spread_radius"}

for key, value in pairs(acid_fire_sticker) do
    for index, value in ipairs(toPurge) do
        if key == value then
            acid_fire_sticker[key] = nil
        end
    end
end

print("stop")

data:extend{acid_fire_sticker}
