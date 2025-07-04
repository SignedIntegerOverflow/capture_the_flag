# Border
worldborder center 0 0
worldborder set 4000

# Teams
team add red
team modify red color red
team add blue
team modify blue color blue
team empty red
team empty blue
team modify red friendlyFire false
team modify blue friendlyFire false

# Overall and Announcement Timers
scoreboard objectives add ctf_timer dummy
scoreboard players set #timer ctf_timer 0
scoreboard objectives add announcement_timer dummy
scoreboard players set #timer announcement_timer 0
scoreboard objectives add capturing_timer dummy
scoreboard players set #timer capturing_timer 0

# Capture Timers
scoreboard objectives add capture_timer_red1 dummy
scoreboard objectives add capture_timer_red2 dummy
scoreboard objectives add capture_timer_red3 dummy
scoreboard objectives add capture_timer_blue1 dummy
scoreboard objectives add capture_timer_blue2 dummy
scoreboard objectives add capture_timer_blue3 dummy
scoreboard players set @a capture_timer_red1 0
scoreboard players set @a capture_timer_red2 0
scoreboard players set @a capture_timer_red3 0
scoreboard players set @a capture_timer_blue1 0
scoreboard players set @a capture_timer_blue2 0
scoreboard players set @a capture_timer_blue3 0

# Coordinate Trackers
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

# Death Trackers
scoreboard objectives add deaths minecraft.custom:minecraft.deaths
scoreboard objectives add last_deaths dummy
scoreboard objectives add time_since_last_death minecraft.custom:minecraft.time_since_death
scoreboard players set @a deaths 0
scoreboard players set @a last_deaths 0
scoreboard players set @a time_since_last_death 0

# Initialize flag holders and last captures
data modify storage ctf:holders red1 set value ""
data modify storage ctf:holders red2 set value ""
data modify storage ctf:holders red3 set value ""
data modify storage ctf:holders blue1 set value ""
data modify storage ctf:holders blue2 set value ""
data modify storage ctf:holders blue3 set value ""
scoreboard objectives add last_captures dummy
scoreboard players set #red last_captures 0
scoreboard players set #blue last_captures 0 

# Remove all previous tags
execute as @a run tag @s remove holding_red1
execute as @a run tag @s remove holding_red2
execute as @a run tag @s remove holding_red3
execute as @a run tag @s remove holding_blue1
execute as @a run tag @s remove holding_blue2
execute as @a run tag @s remove holding_blue3

# Scoreboard
scoreboard objectives add Points dummy
scoreboard objectives setdisplay sidebar Points
scoreboard players set #red Points 0
scoreboard players set #blue Points 0

# Set Player Teams
team join red savagedragon589
team join red ItzKingman
team join red Youritsonthing
team join blue Shadowhunter101
team join blue pyroglyph27
team join blue beastman9678

# Set Spawns
spawnpoint @a[team = red] -800 256 0
spawnpoint @a[team = blue] 800 256 0

# Teleport Players
effect give @a minecraft:resistance 10 4
teleport @a[team = red] -800 256 0
teleport @a[team = blue] 800 256 0

# Set to Survival and Time Set Day
gamemode survival @a
time set day
weather clear

# Title Configuration and Begin Announcement
title @a clear
title @a times 10 20 10
title @a title {"text":"The game has begun!"}