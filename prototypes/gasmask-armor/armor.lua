local mask_icon = table.deepcopy(data.raw.item["flying-robot-frame"].icon)

data:extend {
  {
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
    icon = mask_icon, -- need an actual icon for this
    icon_size = 64,
    icon_mipmaps = 4,
  }
}
