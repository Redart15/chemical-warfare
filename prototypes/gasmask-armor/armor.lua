local mask_icon = table.deepcopy(data.raw.item["flying-robot-frame"].icon)

data:extend(
  {
    {
      type = "armor",
      group = "combat",
      subgroup = "armor",
      order = "faaa",
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
      icons = {
        {
          icon = mask_icon, -- need an actual icon for this
          tint = { r = 255 / 255, b = 0 / 255, g = 255 / 255, a = 0.6 },
        },
      },
      icon_size = 64,
      icon_mipmaps = 4,
    }
  }
)
