local acidthrower_ammo = table.deepcopy(data.raw.ammo["flamethrower-ammo"])
acidthrower_ammo.name = "acidthrower-ammo"
acidthrower_ammo.icons = {
    {
        icon = acidthrower_ammo.icon,
        tint = {r=1,b=1,g=0,a=0.7},
    },
}
acidthrower_ammo.magazine_size = 20
acidthrower_ammo.order = "f[flamethrower]"
acidthrower_ammo.ammo_type[1].action.action_delivery.stream = "acidthrower-stream"
table.remove(acidthrower_ammo.ammo_type,2)
data:extend({acidthrower_ammo})