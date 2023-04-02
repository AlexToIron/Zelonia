#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


# Joueurs qui join
tp @a[score_etat_min=3,score_etat=3] X Y Z
clear @a[score_etat_min=3,score_etat=3]
effect @a[score_etat_min=3,score_etat=3] clear
effect @a[score_etat_min=3,score_etat=3] saturation 999999 255 true
effect @a[score_etat_min=3,score_etat=3] weakness 999999 255 true
effect @a[score_etat_min=3,score_etat=3] resistance 999999 255 true
tellraw @a[score_etat_min=3,score_etat=3] [{"text":"\nTNT run> ","color":"gold","bold":"true"},{"text":"Vous avez rejoint la partie, le jeu a besoint de minimum 2 personnes pour commencer.","color":"white","bold":"false"}]
execute @a[score_etat_min=3,score_etat=3] ~ ~ ~ title @a[score_etat_min=0,score_etat=0] actionbar ["",{"selector":"@a[score_etat_min=3,score_etat=3]","bold":true,"color":"red"},{"text":" A rejoint le ","bold":true},{"text":"TNT run","bold":true,"color":"dark_red"}]
execute @a[score_etat_min=3,score_etat=3] ~ ~ ~ title @a[score_etat_min=3,score_etat=4] actionbar ["",{"selector":"@a[score_etat_min=3,score_etat=3]","bold":true,"color":"red"},{"text":" A rejoint le ","bold":true},{"text":"TNT run","bold":true,"color":"dark_red"}]
clear @a[score_etat_min=3,score_etat=3]
scoreboard players set @a[score_etat_min=3,score_etat=3] spectator 0
scoreboard players set @a[score_etat_min=3,score_etat=3] etat 4

# Début partie
execute @a[score_etat_min=5,score_etat=5] ~ ~ ~ setblock X Y Z air
clear @a[score_etat_min=5,score_etat=5]
effect @a[score_etat_min=5,score_etat=5] clear
effect @a[score_etat_min=5,score_etat=5] minecraft:saturation 999999 255 true
effect @a[score_etat_min=5,score_etat=5] minecraft:resistance 999999 255 true
effect @a[score_etat_min=5,score_etat=5] minecraft:weakness 999999 255 true
effect @a[score_etat_min=5,score_etat=5] night_vision 999999 255 true
gamemode 2 @a[score_etat_min=5,score_etat=5]
title @a[score_etat_min=5,score_etat=5] title {"text": "C'est parti ","color": "green","bold": true}
tellraw @a[score_etat_min=5,score_etat=5] [{"text":"\nTNT run> ","color":"gold","bold":"true"},{"text":"La partie commence !","color":"white","bold":"false"}]
execute @a[score_etat_min=5,score_etat=5] ~ ~ ~ playsound minecraft:block.note.pling master @p ~ ~ ~ 1 1.19
scoreboard players set @a[score_etat_min=5,score_etat=5] spectator 0
scoreboard players set @a[score_etat_min=5,score_etat=5] tntrun 1
tp @a[score_etat_min=5,score_etat=5] X Y Z
scoreboard players set @a[score_etat_min=5,score_etat=5] etat 6

# Blocs qui se cassent
execute @a[score_etat_min=6,score_etat=6,score_tntrun_min=1,score_tntrun=1,score_spectator_min=0,score_spectator=0] ~ ~ ~ detect ~ ~-2 ~ minecraft:tnt 0 summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:[tntrun]}
execute @e[type=area_effect_cloud,tag=tntrun,score_tntrun_min=7] ~ ~ ~ setblock ~ ~-1 ~ air
kill @e[type=area_effect_cloud,tag=tntrun,score_tntrun_min=7]
scoreboard players add @e[type=area_effect_cloud,tag=tntrun] tntrun 1
execute @e[type=area_effect_cloud,tag=tntrun,score_tntrun_min=7] ~ ~ ~ setblock ~ ~-2 ~ air

# enPartie
scoreboard players set enPartie sbtntrun 0
execute @a[score_etat_min=6,score_etat=6,score_tntrun_min=1,score_tntrun=1,score_spectator_min=0,score_spectator=0] ~ ~ ~ scoreboard players add enPartie sbtntrun 1
execute @a[score_etat_min=6,score_etat=6] ~ ~ ~ scoreboard players set @a[score_etat_min=3,score_etat=4] spawn 1

# Spectateur
execute @a[score_etat_min=6,score_etat=6,score_spectator_min=0,score_spectator=0] ~ ~ ~ detect ~ ~-1 ~ barrier 0 scoreboard players set @p spectator 2
gamemode 3 @a[score_spectator_min=2,score_spectator=2]
tp @a[score_spectator_min=2,score_spectator=2,score_etat_min=6,score_etat=6] X Y Z
tellraw @a[score_spectator_min=2,score_spectator=2,score_etat_min=6,score_etat=6] ["",{"text":"\n"},{"text":"\nTNT run> ","bold":true,"color":"gold"},{"text":"Vous etes mort, regardez les autre mourir."}]
execute @a[score_spectator_min=2,score_spectator=2] ~ ~ ~ tellraw @a[score_etat_min=6,score_etat=6] [{"text":"\nTNT run> ","bold":true,"color":"gold"},{"selector":"@a[score_spectator_min=2,score_spectator=2]"},{"text": " est mort(e), vous n'etiez plus que ","color": "yellow","bold": false},{"score":{"name":"enPartie","objective":"sbtntrun"},"bold":true,"color":"red"},{"text": " !"}]
scoreboard players set @a[score_spectator_min=2,score_spectator=2,score_etat_min=6,score_etat=6] tntrun 0
scoreboard players set @a[score_spectator_min=2,score_spectator=2,score_etat_min=6,score_etat=6] spectator 1

execute @a[score_etat_min=6,score_etat=6] ~ ~ ~ detect ~ ~-1 ~ barrier 0 tp @p X Y Z

kill @e[type=Tnt]
execute @a[score_etat_min=4,score_etat=6] ~ ~ ~ kill @e[type=Falling_block,r=20]
