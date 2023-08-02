local acidCapsule = table.deepcopy(data.raw["capsule"]["poison-capsule"]) -- copy the table that defines the heavy armor item into the fireArmor variable
local sprite = table.deepcopy(data.raw["armor"]["heavy-armor"])

acidCapsule.name = "acid-capsule"
acidCapsule.icons = {
  {
    icon = sprite.icon, -- need an actual icon for this
    tint = {r=1,g=1,b=0,a=0.3}
  },
}

local recipe = table.deepcopy(data.raw["recipe"]["poison-capsule"])
recipe.enabled = true
recipe.name = "acid-capsule"
recipe.ingredients = {{"copper-plate",200},{"steel-plate",50}}
recipe.result = "acid-capsule"

data:extend{acidCapsule,recipe}
