# default kits
execute as @a[tag=!exploder,tag=!speeder,tag=!hunter] run tag @s add exploder

# reset levers
setblock -24 3 -8 lever[powered=true]
setblock 0 3 -32 lever[powered=true,facing=west]
setblock -24 3 -56 lever[powered=true,facing=south]
setblock -48 3 -32 lever[powered=true,facing=east]

# scoreboard
scoreboard objectives add Score dummy
scoreboard players add @a Score
scoreboard objectives setdisplay sidebar Score
scoreboard objectives add score dummy

scoreboard objectives add obsidian_bomb minecraft.used:minecraft.silverfish_spawn_egg
scoreboard players add @a obsidian_bomb

# bossbar
bossbar add kotl:time "Time"
bossbar set kotl:time players @a
bossbar set kotl:time style notched_12

# tags
tag @a remove slow_falling
tag @a add jump_boost
tag @a add playing
tag @a[tag=hunter] add normal_arrow

# music
#playsound minecraft:music_disc.stal ambient @a 0 0 0 100 1 1

# reset
fill -12 1 -20 -36 100 -32 air
fill -12 1 -32 -36 100 -44 air
fill -24 1 -32 -24 49 -32 minecraft:obsidian
setblock -24 50 -32 minecraft:bedrock
fill -24 50 -33 -24 1 -33 minecraft:ladder
kill @e[type=item]
scoreboard players set timer time 0

# tp
tp @e[tag=player1] -24 1 -24
tp @e[tag=player2] -16 1 -32
tp @e[tag=player3] -24 1 -40
tp @e[tag=player4] -32 1 -32

# gamemode
gamemode survival @a[tag=playing]

# text
title @a title {"text":"BEGIN!"}
tellraw @a {"text":"Press 'F' to switch abilities!","color":"green"}

# clear
clear @a

# reset scores
scoreboard players set @a Score 0
scoreboard players set @s start 0
scoreboard players set timer coal_time 0