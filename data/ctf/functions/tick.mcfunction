# Increment the timer each tick
scoreboard players add #timer ctf_timer 1
scoreboard players add #timer announcement_timer 1
scoreboard players add #timer capturing_timer 1

# Kill Villagers
kill @e[type=minecraft:villager]

# Replace all portal blocks
execute as @a at @s run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 minecraft:air replace minecraft:nether_portal
execute as @a at @s run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 minecraft:air replace minecraft:end_portal

# Prevent having more than two pearls
scoreboard objectives add pearl_count dummy
execute as @a store result score @s pearl_count run clear @s minecraft:ender_pearl 0
execute as @a[scores={pearl_count=3..}] run function ctf:pearl_limit

# Prevent early border crossings
execute as @a[predicate=ctf:red_crossed] if score #timer ctf_timer matches 0..144000 run tp @s -10 ~ ~
execute as @a[predicate=ctf:blue_crossed] if score #timer ctf_timer matches 0..144000 run tp @s 10 ~ ~

# Notification after each hour
execute if score #timer ctf_timer matches 72000 run title @a title {"text":"1 hour left until the wall drops!"}
execute if score #timer ctf_timer matches 144000 run title @a title {"text":"The wall has dropped!"}
execute if score #timer ctf_timer matches 144000 run title @a subtitle {"text":"You are now allowed to enter enemy territory!"}
execute as @a if score #timer ctf_timer matches 144000 at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1
execute if score #timer ctf_timer matches 216000 run title @a title {"text":"The first hour of the capturing phase has passed."}
execute if score #timer ctf_timer matches 288000 run title @a title {"text":"The second hour of the capturing phase has passed."}
execute if score #timer ctf_timer matches 360000 run title @a times 10 400 10
execute if score #timer ctf_timer matches 360000 run title @a title {"text":"The game is over."} 

# Debuffs to flag holders
# Glowing
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_red1] run effect give @s minecraft:glowing 1 0
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_red2] run effect give @s minecraft:glowing 1 0
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_red3] run effect give @s minecraft:glowing 1 0
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_blue1] run effect give @s minecraft:glowing 1 0
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_blue2] run effect give @s minecraft:glowing 1 0
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_blue3] run effect give @s minecraft:glowing 1 0
# Weakness 3
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_red1] run effect give @s minecraft:weakness 1 2
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_red2] run effect give @s minecraft:weakness 1 2
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_red3] run effect give @s minecraft:weakness 1 2
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_blue1] run effect give @s minecraft:weakness 1 2
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_blue2] run effect give @s minecraft:weakness 1 2
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_blue3] run effect give @s minecraft:weakness 1 2
# Slowness 3
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_red1] run effect give @s minecraft:slowness 1 2
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_red2] run effect give @s minecraft:slowness 1 2
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_red3] run effect give @s minecraft:slowness 1 2
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_blue1] run effect give @s minecraft:slowness 1 2
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_blue2] run effect give @s minecraft:slowness 1 2
execute if score #timer ctf_timer matches 144001..216000 as @a[tag = holding_blue3] run effect give @s minecraft:slowness 1 2
# Weakness 2
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_red1] run effect give @s minecraft:weakness 1 1
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_red2] run effect give @s minecraft:weakness 1 1
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_red3] run effect give @s minecraft:weakness 1 1
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_blue1] run effect give @s minecraft:weakness 1 1
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_blue2] run effect give @s minecraft:weakness 1 1
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_blue3] run effect give @s minecraft:weakness 1 1
# Slowness 2
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_red1] run effect give @s minecraft:slowness 1 1
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_red2] run effect give @s minecraft:slowness 1 1
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_red3] run effect give @s minecraft:slowness 1 1
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_blue1] run effect give @s minecraft:slowness 1 1
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_blue2] run effect give @s minecraft:slowness 1 1
execute if score #timer ctf_timer matches 216001..288000 as @a[tag = holding_blue3] run effect give @s minecraft:slowness 1 1
# Weakness 1
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_red1] run effect give @s minecraft:weakness 1 0
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_red2] run effect give @s minecraft:weakness 1 0
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_red3] run effect give @s minecraft:weakness 1 0
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_blue1] run effect give @s minecraft:weakness 1 0
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_blue2] run effect give @s minecraft:weakness 1 0
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_blue3] run effect give @s minecraft:weakness 1 0
# Slowness 1
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_red1] run effect give @s minecraft:slowness 1 0
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_red2] run effect give @s minecraft:slowness 1 0
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_red3] run effect give @s minecraft:slowness 1 0
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_blue1] run effect give @s minecraft:slowness 1 0
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_blue2] run effect give @s minecraft:slowness 1 0
execute if score #timer ctf_timer matches 288001..360000 as @a[tag = holding_blue3] run effect give @s minecraft:slowness 1 0
# Position Announcements
execute if score #timer announcement_timer matches 1200 run function ctf:announce_flags
execute if score #timer announcement_timer matches 1200 run scoreboard players set #timer announcement_timer 0

# Check flags
function ctf:flag

# Update coordinates
execute as @a store result score @s x run data get entity @s Pos[0]
execute as @a store result score @s y run data get entity @s Pos[1]
execute as @a store result score @s z run data get entity @s Pos[2]

# Upon death
execute as @a if score @s deaths > @s last_deaths run function ctf:on_death

# Give spawn immunity upon respawn
execute as @a[scores={time_since_last_death=1}] run effect give @s minecraft:resistance 10 4

# Particles to indicate flag capture regions
execute if data storage ctf:holders {red1:""} run particle minecraft:wax_on -1250 128 -1250 7 192 7 0 100 force
execute if data storage ctf:holders {red2:""} run particle minecraft:wax_on -1500 128 0 7 192 7 0 100 force
execute if data storage ctf:holders {red3:""} run particle minecraft:wax_on -1250 128 1250 7 192 7 0 100 force
execute if data storage ctf:holders {blue1:""} run particle minecraft:glow 1250 128 -1250 7 192 7 0 100 force
execute if data storage ctf:holders {blue2:""} run particle minecraft:glow 1500 128 0 7 192 7 0 100 force
execute if data storage ctf:holders {blue3:""} run particle minecraft:glow 1250 128 1250 7 192 7 0 100 force

# Particles to indicate flag return regions
execute run particle minecraft:flame -800 128 0 10 192 10 0 100 force
execute run particle minecraft:soul_fire_flame 800 128 0 10 192 10 0 100 force

# Points display
execute as Shadowhunter101 store result score @s Points run scoreboard players get #red Points
execute as pyroglyph27 store result score @s Points run scoreboard players get #blue Points

# End of the game
execute if score #timer ctf_timer matches 360001 run function ctf:endgame