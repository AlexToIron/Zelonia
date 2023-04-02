#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


scoreboard players set @a[,score_etat_min=!12,score_etat=!12] sp 0


# Joueurs qui join
gamemode 2 @a[score_etat_min=11,score_etat=11]
effect @a[score_etat_min=11,score_etat=11] clear
clear @a[score_etat_min=11,score_etat=11]
effect @a[score_etat_min=11,score_etat=11] resistance 999999 255 true
effect @a[score_etat_min=11,score_etat=11] weakness 999999 255 true
effect @a[score_etat_min=11,score_etat=11] saturation 999999 255 true
effect @a[score_etat_min=11,score_etat=11] speed 999999 0 true
tp @a[score_etat_min=11,score_etat=11] X Y Z
tellraw @a[score_etat_min=11,score_etat=11] [{"text":"\nJump> ","color":"gold","bold":"true"},{"text":"Vous avez rejoint le Jump.","color":"white","bold":"false"}]
execute @a[score_etat_min=11,score_etat=11] ~ ~ ~ title @a[score_etat_min=0,score_etat=0] actionbar ["",{"selector":"@a[score_etat_min=11,score_etat=11]","bold":true,"color":"red"},{"text":" A rejoint le ","bold":true},{"text":"Jump","bold":true,"color":"aqua"}]
execute @a[score_etat_min=11,score_etat=11] ~ ~ ~ title @a[score_etat_min=11,score_etat=12] actionbar ["",{"selector":"@a[score_etat_min=11,score_etat=11]","bold":true,"color":"red"},{"text":" A rejoint le ","bold":true},{"text":"Jump","bold":true,"color":"aqua"}]
scoreboard players set @a[score_etat_min=11,score_etat=11] dropTorch 0
scoreboard players set @a[score_etat_min=11,score_etat=11] etat 12

# Checkpoint
replaceitem entity @a[score_etat_min=12,score_etat=12] slot.hotbar.0 redstone_torch 1 0 {display:{Name:"§a§lCheckpoint"}}

execute @a[score_dropTorch_min=1,score_etat_min=12,score_etat=12,score_sp_min=1,score_sp=1] ~ ~ ~ scoreboard players set @p sp 2
scoreboard players set @a[score_dropTorch_min=1,score_dropTorch=1,score_etat_min=12,score_etat=12,score_sp_min=2,score_sp=2] dropTorch 0

execute @a[score_dropTorch_min=1,score_etat_min=12,score_etat=12,score_sp_min=4,score_sp=4] ~ ~ ~ scoreboard players set @p sp 3
scoreboard players set @a[score_dropTorch_min=1,score_dropTorch=1,score_etat_min=12,score_etat=12,score_sp_min=3,score_sp=3] dropTorch 0

execute @a[score_dropTorch_min=1,score_etat_min=12,score_etat=12,score_sp_min=6,score_sp=6] ~ ~ ~ scoreboard players set @p sp 5
scoreboard players set @a[score_dropTorch_min=1,score_dropTorch=1,score_etat_min=12,score_etat=12,score_sp_min=5,score_sp=5] dropTorch 0

tp @a[score_sp_min=2,score_sp=2] X Y Z
scoreboard players set @a[score_sp_min=2,score_sp=2] sp 1

tp @a[score_sp_min=3,score_sp=3] X Y Z
scoreboard players set @a[score_sp_min=3,score_sp=3] sp 4

tp @a[score_sp_min=5,score_sp=5] X Y Z
scoreboard players set @a[score_sp_min=5,score_sp=5] sp 6

# Fin du jump
title @a[score_etat_min=13,score_etat=13,score_sp_min=6,score_sp=6] title {"text":"GG tu as fini le jump"}
execute @a[score_etat_min=13,score_etat=13,score_sp_min=6,score_sp=6] ~ ~ ~ title @a[score_etat_min=12,score_etat=13] subtitle {"text":"à fini le jump","color":"yellow"}
execute @a[score_etat_min=13,score_etat=13,score_sp_min=6,score_sp=6] ~ ~ ~ title @a[score_etat_min=12,score_etat=13] title {"selector":"@a[score_etat_min=13,score_etat=13,score_sp_min=6,score_sp=6]"}
execute @a[score_etat_min=13,score_etat=13,score_sp_min=6,score_sp=6] ~ ~ ~ title @a[score_etat_min=0,score_etat=0] subtitle {"text":"à fini le jump","color":"yellow"}
execute @a[score_etat_min=13,score_etat=13,score_sp_min=6,score_sp=6] ~ ~ ~ title @a[score_etat_min=0,score_etat=0] title {"selector":"@a[score_etat_min=13,score_etat=13,score_sp_min=6,score_sp=6]"}
xp 10l @a[score_etat_min=13,score_etat=13,score_sp_min=6,score_sp=6]
scoreboard players set @a[score_etat_min=13,score_etat=13,score_sp_min=6,score_sp=6] spawn 1
