local ammo = table.deepcopy(data.raw.ammo["flamethrower-ammo"])
ammo.name = "acidthrower-ammo"
ammo.magazine_size = 20
ammo.order = "f[flamethrower]"
ammo.ammo_type[1].action.action_delivery.stream = "acidthrower-stream"
ammo.icons = {
    {
        icon = ammo.icon,
        tint = { r = 255/255, b = 255/255, g = 0/255, a = 0.6 },
    },
}

table.remove(ammo.ammo_type, 2)

data:extend({ ammo })
