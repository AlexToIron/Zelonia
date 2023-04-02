#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


# Joueurs qui join
effect @a[score_etat_min=1,score_etat=1] clear
effect @a[score_etat_min=1,score_etat=1] saturation 999999 255 true
effect @a[score_etat_min=1,score_etat=1] weakness 999999 255 true
effect @a[score_etat_min=1,score_etat=1] resistance 999999 255 true
clear @a[score_etat_min=1,score_etat=1]
tellraw @a[score_etat_min=1,score_etat=1] [{"text":"\nPVP Box> ","color":"gold","bold":"true"},{"text":" Veuillez selectionner votre kit !","bold":true,"color":"white"}]
scoreboard players set @a[score_etat_min=1,score_etat=1] kitpvp 0
spawnpoint @a[score_etat_min=1,score_etat=1] X Y Z
tp @a[score_etat_min=1,score_etat=1] X Y Z
scoreboard players set @a[score_etat_min=1,score_etat=1] etat 2

# Choix des kits
# kit guerrier
replaceitem entity @a[score_etat_min=2,score_etat=2,score_kitpvp_min=0,score_kitpvp=0] slot.hotbar.3 golden_sword 1 0 {display:{Name:"§e§lKit guerrier"}}
execute @a[score_dropSword_min=1,score_etat_min=2,score_etat=2,score_kitpvp_min=0,score_kitpvp=0] ~ ~ ~ scoreboard players set @p kitpvp 1
scoreboard players set @a[score_dropSword_min=1,score_etat_min=2,score_etat=2] dropSword 0
# kit archer
replaceitem entity @a[score_etat_min=2,score_etat=2,score_kitpvp_min=0,score_kitpvp=0] slot.hotbar.5 bow 1 0 {display:{Name:"§e§lKit archer"}}
execute @a[score_dropBow_min=1,score_etat_min=2,score_etat=2,score_kitpvp_min=0,score_kitpvp=0] ~ ~ ~ scoreboard players set @p kitpvp 2
scoreboard players set @a[score_dropBow_min=1,score_etat_min=2,score_etat=2] dropBow 0

# Kit guerrier
clear @a[score_kitpvp_min=1,score_kitpvp=1]
effect @a[score_kitpvp_min=1,score_kitpvp=1] clear
gamemode 2 @a[score_kitpvp_min=1,score_kitpvp=1]
give @a[score_kitpvp_min=1,score_kitpvp=1] minecraft:golden_sword 1 0 {Unbreakable:1,display:{Name:"§e§lKit guerrier"},ench:[{id:16,lvl:1}]}
replaceitem entity @a[score_kitpvp_min=1,score_kitpvp=1] slot.armor.head minecraft:leather_helmet 1 0 {Unbreakable:1,ench:[{id:0,lvl:1}]}
replaceitem entity @a[score_kitpvp_min=1,score_kitpvp=1] slot.armor.chest minecraft:leather_chestplate 1 0 {Unbreakable:1,ench:[{id:0,lvl:1}]}
replaceitem entity @a[score_kitpvp_min=1,score_kitpvp=1] slot.armor.legs minecraft:leather_leggings 1 0 {Unbreakable:1,ench:[{id:0,lvl:1}]}
replaceitem entity @a[score_kitpvp_min=1,score_kitpvp=1] slot.armor.feet minecraft:leather_boots 1 0 {Unbreakable:1,ench:[{id:0,lvl:1}]}
give @a[score_kitpvp_min=1,score_kitpvp=1] minecraft:cooked_beef 64 0
tp @a[score_kitpvp_min=1,score_kitpvp=1] X Y Z
execute @a[score_kitpvp_min=1,score_kitpvp=1] ~ ~ ~ tellraw @a[score_etat_min=1,score_etat=2] [{"text":"\nPVP Box> ","color":"gold","bold":"true"},{"selector":"@a[score_kitpvp_min=1,score_kitpvp=1]","bold":true,"color":"white"},{"text":" A rejoint l'aréne !","bold":true,"color":"white"}]
scoreboard players set @a[score_kitpvp_min=1,score_kitpvp=1] kitpvp 100

# Kit archer
clear @a[score_kitpvp_min=2,score_kitpvp=2]
effect @a[score_kitpvp_min=2,score_kitpvp=2] clear
gamemode 2 @a[score_kitpvp_min=2,score_kitpvp=2]
give @a[score_kitpvp_min=2,score_kitpvp=2] minecraft:golden_sword 1 0 {Unbreakable:1,display:{Name:"§e§lKit archer"}}
give @a[score_kitpvp_min=2,score_kitpvp=2] minecraft:bow 1 0 {Unbreakable:1,display:{Name:"§e§lKit archer"}}
give @a[score_kitpvp_min=2,score_kitpvp=2] minecraft:arrow 10 0 
replaceitem entity @a[score_kitpvp_min=2,score_kitpvp=2] slot.armor.feet minecraft:leather_boots 1 0 {Unbreakable:1}
replaceitem entity @a[score_kitpvp_min=2,score_kitpvp=2] slot.armor.legs minecraft:leather_leggings 1 0 {Unbreakable:1}
replaceitem entity @a[score_kitpvp_min=2,score_kitpvp=2] slot.armor.chest minecraft:leather_chestplate 1 0 {Unbreakable:1}
replaceitem entity @a[score_kitpvp_min=2,score_kitpvp=2] slot.armor.head minecraft:leather_helmet 1 0 {Unbreakable:1}
give @a[score_kitpvp_min=2,score_kitpvp=2] minecraft:cooked_beef 64 0
tp @a[score_kitpvp_min=2,score_kitpvp=2] X Y Z
execute @a[score_kitpvp_min=2,score_kitpvp=2] ~ ~ ~ tellraw @a[score_etat_min=1,score_etat=2] [{"text":"\nPVP Box> ","color":"gold","bold":"true"},{"selector":"@a[score_kitpvp_min=2,score_kitpvp=2]","bold":true,"color":"white"},{"text":" A rejoint l'aréne !","bold":true,"color":"white"}]
scoreboard players set @a[score_kitpvp_min=2,score_kitpvp=2] kitpvp 101

execute @a[score_etat_min=2,score_etat=2] ~ ~ ~ detect ~ ~-1 ~ barrier 0 kill @s
