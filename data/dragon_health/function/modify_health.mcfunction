# Count players
#execute store result score playerCount dragon if entity @a

# Calculate base health and player health
scoreboard players set base dragon 200
scoreboard players operation health dragon = base dragon
scoreboard players operation health dragon *= playerCount dragon

# Multiply total health by 1.5 (3/2) using a fake player
#scoreboard players set multiply dragon 3
#scoreboard players set divide dragon 2
#coreboard players operation health dragon *= multiply dragon 
#coreboard players operation health dragon /= divide dragon 

# Apply the calculated health to the Ender Dragon, use scale 1.5 instead of fake players
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest] store result entity @s attributes[{id:"minecraft:generic.max_health"}].base long 1.5 run scoreboard players get health dragon
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest] store result entity @s Health long 1.5 run scoreboard players get health dragon