local igasmask = {
  type = "item",
  name = "gasmask",
  icon = data.raw["item"]["flying-robot-frame"].icon, -- need an actual icon for this
  icon_size = 64,
  icon_mipmaps = 4,
  stack_size = 1,
  group = "combat",
  subgroup = "equipment",
  order = "g[night-vision]",
}

local rgasmask = {
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
  igasmask,
  rgasmask,
}