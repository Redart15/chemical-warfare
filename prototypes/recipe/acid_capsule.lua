local acid_capsule = {
    type = "recipe",
    name = "acid-capsule",
    eneable = true,
    energy_required = 12,
    ingredients = {
        {"iron-plate", 1},
    },
    result = "acid-capsule"
}

data:extend{acid_capsule}