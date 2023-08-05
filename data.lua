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


-- armor
require(ARMOR .. "gasmask")
require(ARMOR .. "poison_res_armor")

-- ammo
require(AMMO .. "acidthrower-ammo")

-- capsule
require(CAPSULE .. "acid_capsule")

-- fire
require(FIRE .. "acid_splash_player_fire")

--projectile
require(PROJECTILE ..  "acid_cluster_projectile")
-- require(PROJECTILE .. "acid_fire_cluster_projectile")

-- recipe
require(RECIPE .. "acid_capsule")
require(RECIPE .. "gasmask")
require(RECIPE .. "acidthrower-ammo")

-- sticker
require(STICKER .. "acid_player_sticker")

-- stream
require(STREAM .. "acidthrower_stream")
require(STREAM .. "acid_capsule_stream")
-- require(STREAM ..  "acid_fire_stream")

-- technology
require(TECHNOLOGY .. "add_gasmask_2mil3")
require(TECHNOLOGY .. "add_mil3_2modular")




