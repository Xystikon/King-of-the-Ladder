# gamemode
gamemode survival @s

# text
tellraw @a [{"selector":"@s","color":"aqua"},{"text":" is now playing.","color":"green","italic":true}]

# remove tag
tag @s add playing

# clear
clear @s

# reset
scoreboard players set @a join 0
scoreboard players set @a Score 0

# tp
tp @s @e[limit=1,sort=nearest,tag=spawn]