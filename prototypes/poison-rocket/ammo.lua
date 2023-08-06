local ammo = table.deepcopy(data.raw.ammo["rocket"])
ammo.name = "poison-rocket-ammo"
ammo.order = "d[rocket-launcher]-b[explosive]"
ammo.ammo_type.action.action_delivery.projectile = "poison-rocket-projectile"
ammo.icons = {
    {
        icon = ammo.icon,
        tint = { b = 1, g = 0, r = 0, a = 0.5 }
    },
}


data:extend({ ammo })
