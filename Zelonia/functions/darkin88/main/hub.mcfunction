#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


# Command block admin
replaceitem entity @a[tag=op] slot.inventory.0 minecraft:command_block 1 0 {display:{Name:"§dCommand Block"}}

# gamemode 2 pour joueurs pas op
gamemode adventure @a[tag=!op]

# Message retout au spawn vip
execute @a[score_spawnMessage_min=1,score_vip_min=1] ~ ~ ~ title @a[score_etat_min=0,score_etat=0] actionbar ["",{"selector":"@a[score_spawnMessage_min=1,score_vip_min=1]","bold":"true","color":"white"},{"text":" A rejoint le ","bold":true},{"text":"Spawn","bold":true,"color":"aqua"}]
scoreboard players set @a[score_spawnMessage_min=1,score_vip_min=1] spawnMessage 0

# Spam click
effect @a haste 999999 255 true

# Retour au hub
scoreboard players enable @a hub

clear @a[score_hub_min=1,score_hub=1]
effect @a[score_hub_min=1,score_hub=1] clear
effect @a[score_hub_min=1,score_hub=1] minecraft:regeneration 5 255 true
gamemode 2 @a[score_hub_min=1,score_hub=1]
title @a[score_hub_min=1,score_hub=1] title {"text":"Zelonia","color":"red","bold":"true"}
title @a[score_hub_min=1,score_hub=1] subtitle {"text":"TNT run disponible","color":"aqua","bold":"true"}
tellraw @a[score_hub_min=1,score_hub=1] ["",{"text":"\n"},{"text":"Vous avez été téléporté au ","bold":true},{"text":"Hub ","bold":true,"color":"red"},{"text":"!","bold":true}]
scoreboard players set @a[score_hub_min=1,score_hub=1] etat 0
spawnpoint @a[score_hub_min=1,score_hub=1] X Y Z
scoreboard players set @a[score_hub_min=1,score_hub=1] sp 0
scoreboard players set @a[score_hub_min=1,score_hub=1] tntrun 0
scoreboard players set @a[score_hub_min=1,score_hub=1] spectator 0
scoreboard players set @a[score_hub_min=1,score_hub=1] inventaire 0
scoreboard players set @a[score_hub_min=1,score_hub=1] cosmétiques 0
scoreboard players set @a[score_hub_min=1,score_hub=1] shop 0
scoreboard players set @a[score_hub_min=1,score_hub=1,score_vip_min=1] spawnMessage 1
scoreboard players enable @a[score_hub_min=1,score_hub=1] join
scoreboard teams leave @a[score_hub_min=1,score_hub=1]
spawnpoint @a[score_hub_min=1,score_hub=1] X Y Z 
tp @a[score_hub_min=1,score_hub=1] X Y Z
scoreboard players set @a[score_hub_min=1,score_hub=1] hub 0

# Retour au spawn deco
scoreboard players set @a[score_nbdeco_min=1] hub 1
tellraw @a[score_nbdeco_min=1] [{"text":"§6Bienvenue §4"},{"selector":"@a[score_nbdeco_min=1]"}]
execute @a[score_nbdeco_min=1] ~ ~ ~ tellraw @a [{"text":"§e"},{"selector":"@a[score_nbdeco_min=1]"},{"text":" §aA rejoint §ale §aserveur"}]
scoreboard players set @a[score_nbdeco_min=1] nbdeco 0

# Spawn
clear @a[score_spawn_min=1,score_spawn=1]
effect @a[score_spawn_min=1,score_spawn=1] clear
effect @a[score_spawn_min=1,score_spawn=1] minecraft:regeneration 5 255 true
gamemode 2 @a[score_spawn_min=1,score_spawn=1]
scoreboard players set @a[score_spawn_min=1,score_spawn=1] etat 0
scoreboard players set @a[score_spawn_min=1,score_spawn=1] sp 0
scoreboard players set @a[score_spawn_min=1,score_spawn=1] tntrun 0
scoreboard players set @a[score_spawn_min=1,score_spawn=1] spectator 0
scoreboard players set @a[score_spawn_min=1,score_spawn=1] inventaire 0
scoreboard players set @a[score_spawn_min=1,score_spawn=1] cosmétiques 0
scoreboard players set @a[score_spawn_min=1,score_spawn=1] shop 0
scoreboard players set @a[score_spawn_min=1,score_spawn=1,score_vip_min=1] spawnMessage 1
scoreboard players enable @a[score_spawn_min=1,score_spawn=1] join
scoreboard teams leave @a[score_spawn_min=1,score_spawn=1]
tp @a[score_spawn_min=1,score_spawn=1] X Y Z
spawnpoint @a[score_spawn_min=1,score_spawn=1] X Y Z
scoreboard players set @a[score_spawn_min=1,score_spawn=1] spawn 0


# Effet au spawn
effect @a[score_etat=0,m=2] minecraft:resistance 999999 255 true
effect @a[score_etat=0,m=2] minecraft:saturation 999999 255 true
effect @a[score_etat=0,m=2] minecraft:weakness 999999 255 true
