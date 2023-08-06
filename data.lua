ROOT = "prototypes."
ARMOR = ROOT .. "armor."
AMMO = ROOT .. "ammo."
CAPSULE = ROOT .. "capsule."
FIRE = ROOT .. "fire."
PROJECTILE = ROOT .. "projectile."
RECIPE = ROOT .. "recipe."
STREAM = ROOT .. "stream."
STICKER = ROOT .. "sticker."
TECHNOLOGY = ROOT .. "technology."

-- sorting done by item to easily disable them.

-- gasmask
require(ARMOR .. "gasmask")
require(ARMOR .. "poison-res-armor")
require(RECIPE .. "gasmask")
require(TECHNOLOGY .. "add-gasmask-2mil3") -- adds poison resistance
require(TECHNOLOGY .. "add-mil3-2power-armor") -- adds technology to power armour


-- added fire to used by player

require(FIRE .. "acid_splash_player_fire")

-- acid-capsule
require(CAPSULE .. "acid-capsule")
require(PROJECTILE ..  "acid-cluster-projectile")
require(RECIPE .. "acid-capsule")
require(STREAM .. "acid-capsule-stream")

-- acidthrower-ammo
require(AMMO .. "acidthrower-ammo")
require(RECIPE .. "acidthrower-ammo")
require(STREAM .. "acidthrower-stream")
require(STICKER .. "acidthrower-sticker")

-- posion-rocket
require(AMMO .. "poison-rocket-ammo")
require(PROJECTILE .. "poison-rocket-projectile")
require(RECIPE .. "poison-rocket")








