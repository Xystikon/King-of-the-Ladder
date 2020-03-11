
# score
scoreboard objectives add Score dummy
scoreboard players add @a Score
scoreboard objectives setdisplay sidebar Score
scoreboard objectives add score dummy

# time limit
scoreboard objectives add time dummy

# coal timer
scoreboard objectives add coal_time dummy
scoreboard players add timer coal_time 0

# triggers
scoreboard objectives add start trigger
scoreboard players add @a start
scoreboard objectives add leave trigger
scoreboard players add @a leave
scoreboard objectives add join trigger
scoreboard players add @a join
scoreboard objectives add end trigger
scoreboard players add @a end
scoreboard objectives add run trigger
scoreboard players add erlnys run

# options
scoreboard objectives add options dummy
scoreboard players set max_score options 60
scoreboard players set time_limit options 5000
scoreboard players set player_count options 0

# team
team add Playing "Playing"
team join Playing @a[tag=playing]
team modify Playing color aqua

team add Spectating "Spectating"
team join Spectating @a[tag=!Playing]
team modify Spectating color gray
team modify Spectating suffix {"text":" - SPECTATING"}