# gamemode
gamemode spectator @s

# text
tellraw @a [{"selector":"@s","color":"aqua"},{"text":" is now spectating.","color":"gray","italic":true}]

# remove tag
tag @s remove playing

# clear
clear @s

# reset
scoreboard players set @a leave 0
