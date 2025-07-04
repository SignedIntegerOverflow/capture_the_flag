# Drop red flag 1
execute if entity @s[tag = holding_red1] run say I have dropped red flag 1! It is now returned to the red team!
execute if entity @s[tag = holding_red1] run data modify storage ctf:holders red1 set value ""
execute if entity @s[tag = holding_red1] run tag @s remove holding_red1

# Drop red flag 2
execute if entity @s[tag = holding_red2] run say I have dropped red flag 2! It is now returned to the red team!
execute if entity @s[tag = holding_red2] run data modify storage ctf:holders red2 set value ""
execute if entity @s[tag = holding_red2] run tag @s remove holding_red2

# Drop red flag 3
execute if entity @s[tag = holding_red3] run say I have dropped red flag 3! It is now returned to the red team!
execute if entity @s[tag = holding_red3] run data modify storage ctf:holders red3 set value ""
execute if entity @s[tag = holding_red3] run tag @s remove holding_red3

# Drop blue flag 1
execute if entity @s[tag = holding_blue1] run say I have dropped blue flag 1! It is now returned to the blue team!
execute if entity @s[tag = holding_blue1] run data modify storage ctf:holders blue1 set value ""
execute if entity @s[tag = holding_blue1] run tag @s remove holding_blue1

# Drop blue flag 2
execute if entity @s[tag = holding_blue2] run say I have dropped blue flag 2! It is now returned to the blue team!
execute if entity @s[tag = holding_blue2] run data modify storage ctf:holders blue2 set value ""
execute if entity @s[tag = holding_blue2] run tag @s remove holding_blue2

# Drop blue flag 3
execute if entity @s[tag = holding_blue3] run say I have dropped blue flag 3! It is now returned to the blue team!
execute if entity @s[tag = holding_blue3] run data modify storage ctf:holders blue3 set value ""
execute if entity @s[tag = holding_blue3] run tag @s remove holding_blue3

# Changed processed deaths
execute as @s store result score @s last_deaths run scoreboard players get @s deaths