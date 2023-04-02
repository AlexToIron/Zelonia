#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


scoreboard players enable @a cmd


# report
tellraw @a[score_cmd_min=1,score_cmd=1] ["",{"text":"\n"},{"text":"Reports> ","bold":true,"color":"dark_red"},{"text":"Pour report on joueur / bug, vous devez aller sur le ","bold":true,"color":"yellow"},{"text":"discord","bold":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/7eYj7Xn6kP"}},{"text":" (avec preuves) .","bold":true,"color":"yellow"}]
scoreboard players set @a[score_cmd_min=1,score_cmd=1] cmd 0

# discord
tellraw @a[score_cmd_min=2,score_cmd=2] {"text":"https://discord.gg/aMsvkyVqZn","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/aMsvkyVqZn"}}
scoreboard players set @a[score_cmd_min=2,score_cmd=2] cmd 0

# gg
execute @a[score_cmd_min=3,score_cmd=3] ~ ~ ~ say GG
scoreboard players set @a[score_cmd_min=3,score_cmd=3] cmd 0

# start tntrun
execute @a[score_cmd_min=5,score_cmd=5,score_grade_min=5] ~ ~ ~ setblock X Y Z redstone_block
scoreboard players set @a[score_cmd_min=5,score_cmd=5] cmd 0

# start spleef
execute @a[score_cmd_min=6,score_cmd=6,score_grade_min=5] ~ ~ ~ setblock X Y Z redstone_block
scoreboard players set @a[score_cmd_min=6,score_cmd=6] cmd 0