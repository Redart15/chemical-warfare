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
require(ARMOR .. "poison_res_armor")
require(RECIPE .. "gasmask")
require(TECHNOLOGY .. "add_gasmask_2mil3") -- adds poison resistance
require(TECHNOLOGY .. "add_mil3_2power_armor") -- adds technology to power armour


-- added fire to used by player
require(STICKER .. "acid_player_sticker")
require(FIRE .. "acid_splash_player_fire")

-- acid-capsule
require(CAPSULE .. "acid_capsule")
require(PROJECTILE ..  "acid_cluster_projectile")
require(RECIPE .. "acid_capsule")
require(STREAM .. "acid_capsule_stream")

-- acidthrower-ammo
require(AMMO .. "acidthrower_ammo")
require(RECIPE .. "acidthrower_ammo")
require(STREAM .. "acidthrower_stream")

-- posion-rocket
require(AMMO .. "poison_rocket_ammo")
require(PROJECTILE .. "poison_rocket_projectile")
require(RECIPE .. "poison_rocket")








