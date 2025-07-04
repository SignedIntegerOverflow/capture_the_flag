# RED FLAG 1 (-1250,-1250)
execute as @a[predicate=ctf:red1_capture] if data storage ctf:holders {red1:""} at @s run scoreboard players add @s capture_timer_red1 1
execute as @a[predicate=ctf:red1_capture] if data storage ctf:holders {red1:""} run title @s actionbar {"text": "Capturing red flag 1..."}
execute as @a[predicate=ctf:red1_capture] if data storage ctf:holders {red1:""} if score @s capture_timer_red1 matches 1 run say I am attempting to take red flag 1!
execute as @a[predicate=ctf:red1_capture] if data storage ctf:holders {red1:""} if score @s capture_timer_red1 matches 600 run say I am halfway done taking red flag 1!
execute as @a[predicate=ctf:red1_capture] if data storage ctf:holders {red1:""} if score @s capture_timer_red2 matches 1200 run title @a title {"text":"", "extra": [{"selector":"@s"}, {"text":" has taken red flag 1!"}]}
execute as @a[predicate=ctf:red1_capture] at @a if data storage ctf:holders {red1:""} if score @s capture_timer_red1 matches 1200 run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 1 1
execute as @a[predicate=ctf:red1_capture] if data storage ctf:holders {red1:""} if score @s capture_timer_red1 matches 1200 run tag @s add holding_red1
execute as @a[predicate=ctf:red1_capture] if data storage ctf:holders {red1:""} if score @s capture_timer_red1 matches 1200 run data modify storage ctf:holders red1 set from entity @s UUID
execute as @a[scores={capture_timer_red1=1..},predicate=!ctf:red1_capture] run title @s actionbar {"text":""}
execute as @a unless entity @s[predicate=ctf:red1_capture] run scoreboard players set @s capture_timer_red1 0
execute as @a[tag=holding_red1, predicate=ctf:blue_return] run title @a title {"text":"", "extra": [{"selector":"@s"}, {"text":" has returned red flag 1!"}]}
execute as @a[tag=holding_red1, predicate=ctf:blue_return] at @a run playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1 1
execute as @a[tag=holding_red1, predicate=ctf:blue_return] run scoreboard players operation #blue last_captures = #timer ctf_timer
execute if score #timer ctf_timer matches 144001..216000 as @a[tag=holding_red1, predicate=ctf:blue_return] run scoreboard players add #blue Points 3
execute if score #timer ctf_timer matches 216001..288000 as @a[tag=holding_red1, predicate=ctf:blue_return] run scoreboard players add #blue Points 2
execute if score #timer ctf_timer matches 288001..360000 as @a[tag=holding_red1, predicate=ctf:blue_return] run scoreboard players add #blue Points 1
execute as @a[tag=holding_red1, predicate=ctf:blue_return] run tag @s remove holding_red1

# RED FLAG 2 (-1500,0)
execute as @a[predicate=ctf:red2_capture] if data storage ctf:holders {red2:""} at @s run scoreboard players add @s capture_timer_red2 1
execute as @a[predicate=ctf:red2_capture] if data storage ctf:holders {red2:""} run title @s actionbar {"text": "Capturing red flag 2..."}
execute as @a[predicate=ctf:red2_capture] if data storage ctf:holders {red2:""} if score @s capture_timer_red2 matches 1 run say I am attempting to take red flag 2!
execute as @a[predicate=ctf:red2_capture] if data storage ctf:holders {red2:""} if score @s capture_timer_red2 matches 600 run say I am halfway done taking red flag 2!
execute as @a[predicate=ctf:red2_capture] if data storage ctf:holders {red2:""} if score @s capture_timer_red2 matches 1200 run title @a title [{"selector":"@s"}, {"text":" has taken red flag 2!"}]
execute as @a[predicate=ctf:red2_capture] at @a if data storage ctf:holders {red2:""} if score @s capture_timer_red2 matches 1200 run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 1 1
execute as @a[predicate=ctf:red2_capture] if data storage ctf:holders {red2:""} if score @s capture_timer_red2 matches 1200 run tag @s add holding_red2
execute as @a[predicate=ctf:red2_capture] if data storage ctf:holders {red2:""} if score @s capture_timer_red2 matches 1200 run data modify storage ctf:holders red2 set from entity @s UUID
execute as @a[scores={capture_timer_red2=1..},predicate=!ctf:red2_capture] run title @s actionbar {"text":""}
execute as @a unless entity @s[predicate=ctf:red2_capture] run scoreboard players set @s capture_timer_red2 0
execute as @a[tag=holding_red2, predicate=ctf:blue_return] run title @a title [{"selector":"@s"}, {"text":" has returned red flag 2!"}]
execute as @a[tag=holding_red2, predicate=ctf:blue_return] at @a run playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1 1
execute as @a[tag=holding_red2, predicate=ctf:blue_return] run scoreboard players operation #blue last_captures = #timer ctf_timer
execute if score #timer ctf_timer matches 144001..216000 as @a[tag=holding_red2, predicate=ctf:blue_return] run scoreboard players add #blue Points 3
execute if score #timer ctf_timer matches 216001..288000 as @a[tag=holding_red2, predicate=ctf:blue_return] run scoreboard players add #blue Points 2
execute if score #timer ctf_timer matches 288001..360000 as @a[tag=holding_red2, predicate=ctf:blue_return] run scoreboard players add #blue Points 1
execute as @a[tag=holding_red2, predicate=ctf:blue_return] run tag @s remove holding_red2

# RED FLAG 3 (-1250,1250)
execute as @a[predicate=ctf:red3_capture] if data storage ctf:holders {red3:""} at @s run scoreboard players add @s capture_timer_red3 1
execute as @a[predicate=ctf:red3_capture] if data storage ctf:holders {red3:""} run title @s actionbar {"text": "Capturing red flag 3..."}
execute as @a[predicate=ctf:red3_capture] if data storage ctf:holders {red3:""} if score @s capture_timer_red3 matches 1 run say I am attempting to take red flag 3!
execute as @a[predicate=ctf:red3_capture] if data storage ctf:holders {red3:""} if score @s capture_timer_red3 matches 600 run say I am halfway done taking red flag 3!
execute as @a[predicate=ctf:red3_capture] if data storage ctf:holders {red3:""} if score @s capture_timer_red3 matches 1200 run title @a title [{"selector":"@s"}, {"text":" has taken red flag 3!"}]
execute as @a[predicate=ctf:red3_capture] at @a if data storage ctf:holders {red3:""} if score @s capture_timer_red3 matches 1200 run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 1 1
execute as @a[predicate=ctf:red3_capture] if data storage ctf:holders {red3:""} if score @s capture_timer_red3 matches 1200 run tag @s add holding_red3
execute as @a[predicate=ctf:red3_capture] if data storage ctf:holders {red3:""} if score @s capture_timer_red3 matches 1200 run data modify storage ctf:holders red3 set from entity @s UUID
execute as @a[scores={capture_timer_red3=1..},predicate=!ctf:red3_capture] run title @s actionbar {"text":""}
execute as @a unless entity @s[predicate=ctf:red3_capture] run scoreboard players set @s capture_timer_red3 0
execute as @a[tag=holding_red3, predicate=ctf:blue_return] run title @a title [{"selector":"@s"}, {"text":" has returned red flag 3!"}]
execute as @a[tag=holding_red3, predicate=ctf:blue_return] at @a run playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1 1
execute as @a[tag=holding_red3, predicate=ctf:blue_return] run scoreboard players operation #blue last_captures = #timer ctf_timer
execute if score #timer ctf_timer matches 144001..216000 as @a[tag=holding_red3, predicate=ctf:blue_return] run scoreboard players add #blue Points 3
execute if score #timer ctf_timer matches 216001..288000 as @a[tag=holding_red3, predicate=ctf:blue_return] run scoreboard players add #blue Points 2
execute if score #timer ctf_timer matches 288001..360000 as @a[tag=holding_red3, predicate=ctf:blue_return] run scoreboard players add #blue Points 1
execute as @a[tag=holding_red3, predicate=ctf:blue_return] run tag @s remove holding_red3

# BLUE FLAG 1 (1250,-1250)
execute as @a[predicate=ctf:blue1_capture] if data storage ctf:holders {blue1:""} at @s run scoreboard players add @s capture_timer_blue1 1
execute as @a[predicate=ctf:blue1_capture] if data storage ctf:holders {blue1:""} run title @s actionbar {"text": "Capturing blue flag 1..."}
execute as @a[predicate=ctf:blue1_capture] if data storage ctf:holders {blue1:""} if score @s capture_timer_blue1 matches 1 run say I am attempting to take blue flag 1!
execute as @a[predicate=ctf:blue1_capture] if data storage ctf:holders {blue1:""} if score @s capture_timer_blue1 matches 600 run say I am halfway done taking blue flag 1!
execute as @a[predicate=ctf:blue1_capture] if data storage ctf:holders {blue1:""} if score @s capture_timer_blue1 matches 1200 run title @a title [{"selector":"@s"}, {"text":" has taken blue flag 1!"}]
execute as @a[predicate=ctf:blue1_capture] at @a if data storage ctf:holders {blue1:""} if score @s capture_timer_blue1 matches 1200 run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 1 1
execute as @a[predicate=ctf:blue1_capture] if data storage ctf:holders {blue1:""} if score @s capture_timer_blue1 matches 1200 run tag @s add holding_blue1
execute as @a[predicate=ctf:blue1_capture] if data storage ctf:holders {blue1:""} if score @s capture_timer_blue1 matches 1200 run data modify storage ctf:holders blue1 set from entity @s UUID
execute as @a[scores={capture_timer_blue1=1..},predicate=!ctf:blue1_capture] run title @s actionbar {"text":""}
execute as @a unless entity @s[predicate=ctf:blue1_capture] run scoreboard players set @s capture_timer_blue1 0
execute as @a[tag=holding_blue1, predicate=ctf:red_return] run title @a title [{"selector":"@s"}, {"text":" has returned blue flag 1!"}]
execute as @a[tag=holding_blue1, predicate=ctf:red_return] at @a run playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1 1
execute as @a[tag=holding_blue1, predicate=ctf:red_return] run scoreboard players operation #red last_captures = #timer ctf_timer
execute if score #timer ctf_timer matches 144001..216000 as @a[tag=holding_blue1, predicate=ctf:red_return] run scoreboard players add #red Points 3
execute if score #timer ctf_timer matches 216001..288000 as @a[tag=holding_blue1, predicate=ctf:red_return] run scoreboard players add #red Points 2
execute if score #timer ctf_timer matches 288001..360000 as @a[tag=holding_blue1, predicate=ctf:red_return] run scoreboard players add #red Points 1
execute as @a[tag=holding_blue1, predicate=ctf:red_return] run tag @s remove holding_blue1

# BLUE FLAG 2 (1500,0)
execute as @a[predicate=ctf:blue2_capture] if data storage ctf:holders {blue2:""} at @s run scoreboard players add @s capture_timer_blue2 1
execute as @a[predicate=ctf:blue2_capture] if data storage ctf:holders {blue2:""} run title @s actionbar {"text": "Capturing blue flag 2..."}
execute as @a[predicate=ctf:blue2_capture] if data storage ctf:holders {blue2:""} if score @s capture_timer_blue2 matches 1 run say I am attempting to take blue flag 2!
execute as @a[predicate=ctf:blue2_capture] if data storage ctf:holders {blue2:""} if score @s capture_timer_blue2 matches 600 run say I am halfway done taking blue flag 2!
execute as @a[predicate=ctf:blue2_capture] if data storage ctf:holders {blue2:""} if score @s capture_timer_blue2 matches 1200 run title @a title [{"selector":"@s"}, {"text":" has taken blue flag 2!"}]
execute as @a[predicate=ctf:blue2_capture] at @a if data storage ctf:holders {blue2:""} if score @s capture_timer_blue2 matches 1200 run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 1 1
execute as @a[predicate=ctf:blue2_capture] if data storage ctf:holders {blue2:""} if score @s capture_timer_blue2 matches 1200 run tag @s add holding_blue2
execute as @a[predicate=ctf:blue2_capture] if data storage ctf:holders {blue2:""} if score @s capture_timer_blue2 matches 1200 run data modify storage ctf:holders blue2 set from entity @s UUID
execute as @a[scores={capture_timer_blue2=1..},predicate=!ctf:blue2_capture] run title @s actionbar {"text":""}
execute as @a unless entity @s[predicate=ctf:blue2_capture] run scoreboard players set @s capture_timer_blue2 0
execute as @a[tag=holding_blue2, predicate=ctf:red_return] run title @a title [{"selector":"@s"}, {"text":" has returned blue flag 2!"}]
execute as @a[tag=holding_blue2, predicate=ctf:red_return] at @a run playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1 1
execute as @a[tag=holding_blue2, predicate=ctf:red_return] run scoreboard players operation #red last_captures = #timer ctf_timer
execute if score #timer ctf_timer matches 144001..216000 as @a[tag=holding_blue2, predicate=ctf:red_return] run scoreboard players add #red Points 3
execute if score #timer ctf_timer matches 216001..288000 as @a[tag=holding_blue2, predicate=ctf:red_return] run scoreboard players add #red Points 2
execute if score #timer ctf_timer matches 288001..360000 as @a[tag=holding_blue2, predicate=ctf:red_return] run scoreboard players add #red Points 1
execute as @a[tag=holding_blue2, predicate=ctf:red_return] run tag @s remove holding_blue2

# BLUE FLAG 3 (1250,1250)
execute as @a[predicate=ctf:blue3_capture] if data storage ctf:holders {blue3:""} at @s run scoreboard players add @s capture_timer_blue3 1
execute as @a[predicate=ctf:blue3_capture] if data storage ctf:holders {blue3:""} run title @s actionbar {"text": "Capturing blue flag 3..."}
execute as @a[predicate=ctf:blue3_capture] if data storage ctf:holders {blue3:""} if score @s capture_timer_blue3 matches 1 run say I am attempting to take blue flag 3!
execute as @a[predicate=ctf:blue3_capture] if data storage ctf:holders {blue3:""} if score @s capture_timer_blue3 matches 600 run say I am halfway done taking blue flag 3!
execute as @a[predicate=ctf:blue3_capture] if data storage ctf:holders {blue3:""} if score @s capture_timer_blue3 matches 1200 run title @a title [{"selector":"@s"}, {"text":" has taken blue flag 3!"}]
execute as @a[predicate=ctf:blue3_capture] at @a if data storage ctf:holders {blue3:""} if score @s capture_timer_blue3 matches 1200 run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 1 1
execute as @a[predicate=ctf:blue3_capture] if data storage ctf:holders {blue3:""} if score @s capture_timer_blue3 matches 1200 run tag @s add holding_blue3
execute as @a[predicate=ctf:blue3_capture] if data storage ctf:holders {blue3:""} if score @s capture_timer_blue3 matches 1200 run data modify storage ctf:holders blue3 set from entity @s UUID
execute as @a[scores={capture_timer_blue3=1..},predicate=!ctf:blue3_capture] run title @s actionbar {"text":""}
execute as @a unless entity @s[predicate=ctf:blue3_capture] run scoreboard players set @s capture_timer_blue3 0
execute as @a[tag=holding_blue3, predicate=ctf:red_return] run title @a title [{"selector":"@s"}, {"text":" has returned blue flag 3!"}]
execute as @a[tag=holding_blue3, predicate=ctf:red_return] at @a run playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1 1
execute as @a[tag=holding_blue3, predicate=ctf:red_return] run scoreboard players operation #red last_captures = #timer ctf_timer
execute if score #timer ctf_timer matches 144001..216000 as @a[tag=holding_blue3, predicate=ctf:red_return] run scoreboard players add #red Points 3
execute if score #timer ctf_timer matches 216001..288000 as @a[tag=holding_blue3, predicate=ctf:red_return] run scoreboard players add #red Points 2
execute if score #timer ctf_timer matches 288001..360000 as @a[tag=holding_blue3, predicate=ctf:red_return] run scoreboard players add #red Points 1
execute as @a[tag=holding_blue3, predicate=ctf:red_return] run tag @s remove holding_blue3
