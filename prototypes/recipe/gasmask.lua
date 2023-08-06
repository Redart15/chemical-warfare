local gasmask = {
    type = "recipe",
    name = "gasmask",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {"plastic-bar", 10},
        {"electronic-circuit",5},
        {"coal", 10},
    },
    result = "gasmask",
    }

data:extend{gasmask}