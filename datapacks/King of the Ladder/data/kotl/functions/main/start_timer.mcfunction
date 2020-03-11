
scoreboard objectives add start_timer dummy
scoreboard players add timer start_timer 1

execute if score timer start_timer matches 20 run title @a title {"text":"3","color":"red"}
execute if score timer start_timer matches 40 run title @a title {"text":"2","color":"gold"}
execute if score timer start_timer matches 60 run title @a title {"text":"1","color":"green"}
execute if score timer start_timer matches 80 run function kotl:main/start

execute if score timer start_timer matches 80 run scoreboard objectives remove start_timer
execute if score timer start_timer matches 80 run scoreboard players set @a start 0
