#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


# Joueurs qui join
tp @a[score_etat_min=14,score_etat=14] X Y Z
gamemode 2 @a[score_etat_min=14,score_etat=14]
clear @a[score_etat_min=14,score_etat=14]
effect @a[score_etat_min=14,score_etat=14] clear
effect @a[score_etat_min=14,score_etat=14] saturation 999999 255 true
effect @a[score_etat_min=14,score_etat=14] resistance 999999 255 true
tellraw @a[score_etat_min=14,score_etat=14] [{"text":"\nKbFFA> ","color":"gold","bold":"true"},{"text":"Vous avez rejoint la partie, ne tombez pas !","color":"white","bold":"false"}]
execute @a[score_etat_min=14,score_etat=14] ~ ~ ~ title @a[score_etat_min=14,score_etat=15] actionbar ["",{"selector":"@a[score_etat_min=14,score_etat=14]","bold":true,"color":"red"},{"text":" A rejoint le ","bold":true},{"text":"KbFFA","bold":true,"color":"green"}]
execute @a[score_etat_min=14,score_etat=14] ~ ~ ~ title @a[score_etat_min=0,score_etat=0] actionbar ["",{"selector":"@a[score_etat_min=14,score_etat=14]","bold":true,"color":"red"},{"text":" A rejoint le ","bold":true},{"text":"KbFFA","bold":true,"color":"green"}]
clear @a[score_etat_min=14,score_etat=14]
replaceitem entity @a[score_etat_min=14,score_etat=14] slot.weapon.offhand minecraft:ender_pearl 3 0
effect @a[score_etat_min=14,score_etat=14] night_vision 999999 255 true
scoreboard players set @a[score_etat_min=14,score_etat=14] etat 15

# Joueurs dans la partie
replaceitem entity @a[score_etat_min=15,score_etat=15] slot.hotbar.0 stick 1 0 {display:{Name:"KB stick"},Unbreakable:1,ench:[{id:19,lvl:2}]}
effect @a[score_etat_min=15,score_etat=15] minecraft:fire_resistance 999999 255 true

# Portails
# tp @a[x=-22,y=31,z=208,r=1] -5 33 174
# tp @a[x=-5,y=33,z=172,r=1] -22 30 207

# Joueurs qui tombent
execute @a[score_etat_min=15,score_etat=15] ~ ~ ~ detect ~ ~-1 ~ barrier 0 clear @p
execute @a[score_etat_min=15,score_etat=15] ~ ~ ~ detect ~ ~-1 ~ barrier 0 replaceitem entity @p slot.weapon.offhand minecraft:ender_pearl 3 0
execute @a[score_etat_min=15,score_etat=15] ~ ~ ~ detect ~ ~-1 ~ barrier 0 tp @p X Y Z