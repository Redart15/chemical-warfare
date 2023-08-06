local ammo = table.deepcopy(data.raw.ammo["flamethrower-ammo"])
ammo.name = "acidthrower-ammo"
ammo.magazine_size = 20
ammo.order = "f[flamethrower]"
ammo.ammo_type[1].action.action_delivery.stream = "acidthrower-stream"
ammo.icons = {
    {
        icon = ammo.icon,
        tint = { r = 1, b = 1, g = 0, a = 0.7 },
    },
}

table.remove(ammo.ammo_type, 2)

data:extend({ ammo })
