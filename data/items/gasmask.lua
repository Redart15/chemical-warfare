local igasmask = {
  type = "armor",
  group = "combat",
  subgroup = "armor",
  order = "f",
  name = "gasmask",
  stack_size = 1,
  infinite = true,
  resistances = {
    {
      type = "poison",
      percent = 30,
      decrease = 5,
    },
  },
  icon = data.raw["item"]["flying-robot-frame"].icon, -- need an actual icon for this
  icon_size = 64,
  icon_mipmaps = 4,
}

local rgasmask = {
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

data:extend{
  igasmask,
  rgasmask,
}