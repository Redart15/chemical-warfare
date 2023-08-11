local item = table.deepcopy(data.raw.item["gun-turret"])
item.name = "test-turret"
item.place_result = "test-turret"

item.icons = {
    {
        icon = item.icon,
        tint = { b = 0 / 255, g = 0 / 255, r = 255 / 255, a = 0.5 }
    }
}

data:extend({ item })
