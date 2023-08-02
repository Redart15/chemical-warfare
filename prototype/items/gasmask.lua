
local gasmask_icon = data.raw["item"]["flying-robot-frame"].icon

local gasmask_item = {
    type = "item",
    name = "gasmask",
    icon = gasmask_icon, -- need an actual icon for this
    icon_size = 64,
    icon_mipmaps = 4,
    stack_size = 1,
    group = "combat",
    subgroup = "equipment",
    order = "g[night-vision]",
}

local gasmask_recipe = {
    type = "recipe",
    name = "gasmask",
    enabled = false,
    energy_required = 10,
    ingredients = {
      {"plastic-bar", 10},
      {"advanced-circuit",5},
      {"coal", 10},
    },
    result = "gasmask",
}

data:extend{
  gasmask_item,
  gasmask_recipe,
}
