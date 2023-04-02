#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


# Joueurs qui join
tp @a[score_etat_min=7,score_etat=7] X Y Z
tellraw @a[score_etat_min=7,score_etat=7] [{"text":"\nSpleef> ","color":"gold","bold":"true"},{"text":"Vous avez rejoint la partie, le jeu a besoint de minimum 3 personnes pour commencer.","color":"white","bold":"false"}]
effect @a[score_etat_min=7,score_etat=7] clear
clear @a[score_etat_min=7,score_etat=7]
effect @a[score_etat_min=7,score_etat=7] minecraft:weakness 999999 255 true
effect @a[score_etat_min=7,score_etat=7] minecraft:resistance 999999 255 true
effect @a[score_etat_min=7,score_etat=7] minecraft:saturation 999999 255 true
execute @a[score_etat_min=7,score_etat=7] ~ ~ ~ title @a[score_etat_min=0,score_etat=0] actionbar ["",{"selector":"@a[score_etat_min=7,score_etat=7]","bold":true,"color":"red"},{"text":" A rejoint le ","bold":true},{"text":"Spleef","bold":true,"color":"dark_green"}]
execute @a[score_etat_min=7,score_etat=7] ~ ~ ~ title @a[score_etat_min=7,score_etat=8] actionbar ["",{"selector":"@a[score_etat_min=7,score_etat=7]","bold":true,"color":"red"},{"text":" A rejoint le ","bold":true},{"text":"Spleef","bold":true,"color":"dark_green"}]
scoreboard players set @a[score_etat_min=7,score_etat=7] etat 8

# Début de partie
execute @a[score_etat_min=9,score_etat=9] ~ ~ ~ setblock X Y Z air
gamemode 2 @a[score_etat_min=9,score_etat=9]
clear @a[score_etat_min=9,score_etat=9]
effect @a[score_etat_min=9,score_etat=9] clear
effect @a[score_etat_min=9,score_etat=9] minecraft:weakness 999999 255 true
effect @a[score_etat_min=9,score_etat=9] minecraft:saturation 999999 255 true
effect @a[score_etat_min=9,score_etat=9] minecraft:night_vision 999999 255 true
tellraw @a[score_etat_min=9,score_etat=9] [{"text":"\nSpleef> ","color":"gold","bold":"true"},{"text":"La partie commence !","color":"white","bold":"false"}]
execute @a[score_etat_min=9,score_etat=9] ~ ~ ~ playsound minecraft:block.note.pling master @p ~ ~ ~ 1.19
scoreboard players set @a[score_etat_min=9,score_etat=9] etat 10

# En partie
replaceitem entity @a[score_etat_min=10,score_etat=10] slot.hotbar.0 diamond_shovel 1 0 {display:{color:0,Name:"§l§fPelle des dieux"},CanDestroy:[snow],Unbreakable:1}
execute @a[score_etat_min=10,score_etat=10] ~ ~ ~ scoreboard players set @a[score_etat_min=7,score_etat=8] spawn 1
