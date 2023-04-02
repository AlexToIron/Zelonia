#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################

scoreboard players enable @a[score_etat_min=0,score_etat=0] cosmétiques

# grades
scoreboard players set @a[score_grade_min=0,score_grade=0] vip 0
scoreboard players set @a[score_vip_min=0,score_vip=0,team=vip] vip 1
scoreboard players set @a[score_vip_min=0,score_vip=0,team=dona] vip 1
scoreboard players set @a[score_vip_min=0,score_vip=0,team=builder] vip 1
scoreboard players set @a[score_vip_min=0,score_vip=0,team=admin] vip 1
scoreboard players set @a[team=modo] vip 1
scoreboard players set @a[score_vip_min=0,score_vip=0,team=legende] vip 1
scoreboard players set @a[score_vip_min=0,score_vip=0,team=helper] vip 1
scoreboard players set @a[score_vip_min=0,score_vip=0,team=dev] vip 1

# Speed 6
effect @a[score_cosmétiques_min=1,score_cosmétiques=1,score_etat_min=0,score_etat=0] minecraft:speed 999999 6 true
scoreboard players set @a[score_cosmétiques_min=1,score_cosmétiques=1] cosmétiques 100

# jump 20
effect @a[score_cosmétiques_min=7,score_cosmétiques=7,score_etat_min=0,score_etat=0] minecraft:jump_boost 999999 20 true
scoreboard players set @a[score_cosmétiques_min=7,score_cosmétiques=7] cosmétiques 100

# Austronaute
replaceitem entity @a[score_cosmétiques_min=3,score_cosmétiques=3,score_etat_min=0,score_etat=0] slot.armor.head minecraft:glass 
replaceitem entity @a[score_cosmétiques_min=3,score_cosmétiques=3,score_etat_min=0,score_etat=0] slot.armor.chest leather_chestplate 1 0 {display:{color:16777215}}
replaceitem entity @a[score_cosmétiques_min=3,score_cosmétiques=3,score_etat_min=0,score_etat=0] slot.armor.chest leather_chestplate 1 0 {display:{color:16777215}}
replaceitem entity @a[score_cosmétiques_min=3,score_cosmétiques=3,score_etat_min=0,score_etat=0] slot.armor.legs minecraft:leather_leggings 1 0 {display:{color:16777215}}
replaceitem entity @a[score_cosmétiques_min=3,score_cosmétiques=3,score_etat_min=0,score_etat=0] slot.armor.feet minecraft:leather_boots 1 0 {display:{color:16777215}}
scoreboard players set @a[score_cosmétiques_min=3,score_cosmétiques=3] cosmétiques 100

# Dragon
replaceitem entity @a[score_cosmétiques_min=4,score_cosmétiques=4,score_etat_min=0,score_etat=0] slot.armor.head minecraft:skull 1 5
replaceitem entity @a[score_cosmétiques_min=4,score_cosmétiques=4,score_etat_min=0,score_etat=0] slot.armor.chest minecraft:elytra 1 0 {Unbreakable:1,display:{Name:"Ailes de dragon"}}
replaceitem entity @a[score_cosmétiques_min=4,score_cosmétiques=4,score_etat_min=0,score_etat=0] slot.armor.legs minecraft:leather_leggings 1 0 {display:{color:0}}
replaceitem entity @a[score_cosmétiques_min=4,score_cosmétiques=4,score_etat_min=0,score_etat=0] slot.armor.feet minecraft:leather_boots 1 0 {display:{color:0}}
replaceitem entity @a[score_cosmétiques_min=4,score_cosmétiques=4,score_etat_min=0,score_etat=0] slot.inventory.1 minecraft:fireworks 64 0 {Fireworks:{Flight:1,Explosions:[{Type:1,Colors:[7995154,16252672,15615],FadeColors:[16777215]}]}}
scoreboard players set @a[score_cosmétiques_min=4,score_cosmétiques=4] cosmétiques 100

# Particule 1
execute @a[score_cosmétiques_min=10,score_cosmétiques=10,score_etat_min=0,score_etat=0] ~ ~ ~ particle flame ~ ~2 ~ 0.07 0.02 0.07 0.01 20 normal @p

# Particule 2
execute @a[score_cosmétiques_min=11,score_cosmétiques=11,score_etat_min=0,score_etat=0] ~ ~ ~ particle fireworksSpark ~ ~ ~ 0.2 0 .2 0.1 1 normal @p

# Particule 3
execute @a[score_cosmétiques_min=12,score_cosmétiques=12,score_etat_min=0,score_etat=0] ~ ~ ~ particle heart ~ ~2 ~ 0.2 0 .1 0.1 1 normal @p
