local acidthrower_ammo = {
    type = "recipe",
    name = "acidthrower-ammo",
    eneable = true,
    energy_required = 12,
    ingredients = {
        {"iron-plate", 1},
    },
    result = "acidthrower-ammo"
}

data:extend{acidthrower_ammo}