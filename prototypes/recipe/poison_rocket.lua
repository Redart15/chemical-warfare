local poison_rocket = {
    type = "recipe",
    name = "poison-rocket-ammo",
    eneable = true,
    energy_required = 12,
    ingredients = {
        {"iron-plate", 1},
    },
    result = "poison-rocket-ammo",
    }

data:extend{poison_rocket}