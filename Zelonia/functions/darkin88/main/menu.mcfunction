#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


execute @a[score_etat=0] ~ ~ ~ kill @e[type=Ender_pearl,r=20]
execute @a ~ ~ ~ kill @e[type=Item]
scoreboard players set @a[score_etat_min=1] inventaire 0
scoreboard players set @a[score_inventaire=0,score_etat_min=1] dropPearl 0
scoreboard players set @a[score_inventaire=0] score_dropCompass 0
scoreboard players set @a[score_inventaire=0] dropClock 0
scoreboard players set @a[score_inventaire=0] dropIronBars 0
scoreboard players set @a[score_inventaire=0] dropEndCrystal 0
scoreboard players set @a[score_inventaire=0] dropPaper 0

# Retour au hub
replaceitem entity @a[score_etat_min=1] slot.hotbar.8 bed 1 14 {display:{Name:"§4§lRetour au hub"}}
execute @a[score_dropBed_min=1,score_dropBed=1,score_etat_min=2] ~ ~ ~ scoreboard players set @p hub 1
scoreboard players set @a[score_dropBed_min=1,score_dropBed=1,score_etat_min=2] dropBed 0

# Menu 1
replaceitem entity @a[score_etat_min=0,score_etat=0,score_inventaire=0] slot.hotbar.4 ender_pearl 1 0 {display:{Name:"§b§lLACHEZ MOI §9§lpour acceder au menu !"},ench:[{id:0,lvl:1}],HideFlags:1}
scoreboard players set @a[score_dropPearl_min=1,score_dropPearl=1,score_etat=0] inventaire 1
scoreboard players set @a[score_dropPearl_min=1,score_dropPearl=1,score_etat=0] dropPearl 0

replaceitem entity @a[score_dropDoor_min=1,score_inventaire_min=1,score_etat=0] slot.hotbar.8 air 1 0
replaceitem entity @a[score_dropDoor_min=1,score_inventaire_min=1,score_etat=0] slot.hotbar.0 air 1 0
replaceitem entity @a[score_dropDoor_min=1,score_inventaire_min=1,score_etat=0] slot.hotbar.1 air 1 0
replaceitem entity @a[score_dropDoor_min=1,score_inventaire_min=1,score_etat=0] slot.hotbar.7 air 1 0
replaceitem entity @a[score_dropDoor_min=1,score_inventaire_min=1,score_etat=0] slot.hotbar.6 air 1 0
replaceitem entity @a[score_dropDoor_min=1,score_inventaire_min=1,score_etat=0] slot.hotbar.2 air 1 0
scoreboard players set @a[score_dropDoor_min=1,score_inventaire_min=1,score_etat=0] inventaire 0
scoreboard players set @a[score_dropDoor_min=1,score_etat=0] dropDoor 0

tellraw @a[score_inventaire_min=1,score_inventaire=1,score_dropPaper_min=1] ["",{"text":"==========================\n\n","bold":true},{"text":"Site web","bold":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://www.zelonia.tk"}},{"text":"\n\n","bold":true},{"text":"Discord","bold":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://discord.zelonia.tk"}},{"text":"\n\n","bold":true},{"text":"Youtube","bold":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCGpjHeu8tRSzvmJHmPwapLg"}},{"text":"\n\n","bold":true},{"text":"Twitter","bold":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/ZeloniaMC"}},{"text":"\n\n==========================","bold":true}]
scoreboard players set @a[score_inventaire_min=1,score_inventaire=1,score_dropPaper_min=1] dropPaper 0

#Menu 2
replaceitem entity @a[score_etat_min=0,score_etat=0,score_inventaire_min=1,score_inventaire=1] slot.hotbar.3 air 1 0
replaceitem entity @a[score_etat_min=0,score_etat=0,score_inventaire_min=1,score_inventaire=1] slot.hotbar.5 air 1 0
replaceitem entity @a[score_etat_min=0,score_etat=0,score_inventaire_min=1,score_inventaire=1] slot.hotbar.4 compass 1 0 {display:{Name:"§e§lJeux"},ench:[{id:0,lvl:1}],HideFlags:1}
replaceitem entity @a[score_etat_min=0,score_etat=0,score_inventaire_min=1] slot.hotbar.8 wooden_door 1 0 {display:{Name:"§c§lRetour"},ench:[{id:0,lvl:1}],HideFlags:1}
replaceitem entity @a[score_etat_min=0,score_etat=0,score_inventaire_min=1,score_inventaire=1] slot.hotbar.0 paper 1 0 {display:{Name:"§6§lLiens"},ench:[{id:0,lvl:1}],HideFlags:1}
replaceitem entity @a[score_etat_min=0,score_etat=0,score_inventaire_min=1,score_inventaire=1] slot.hotbar.7 written_book 1 0 {pages:["[\"\",{\"text\":\"      Cosmétiques     \",\"bold\":true,\"underlined\":true},{\"text\":\" \",\"color\":\"reset\",\"underlined\":true},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"Speed VI\",\"bold\":true,\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger cosmétiques set 1\"}},{\"text\":\"\\n\",\"color\":\"reset\",\"bold\":true},{\"text\":\"Jump boost XX\",\"bold\":true,\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger cosmétiques set 7\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\",\"bold\":true},{\"text\":\"Austronaute\",\"bold\":true,\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger cosmétiques set 3\"}},{\"text\":\"\\n\",\"color\":\"reset\",\"bold\":true},{\"text\":\"Dragon\",\"bold\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger cosmétiques set 4\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"Flames\",\"bold\":true,\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger cosmétiques set 10\"}},{\"text\":\"\\n\",\"color\":\"reset\",\"bold\":true},{\"text\":\"Artifices\",\"bold\":true,\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger cosmétiques set 11\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"Coeurs\",\"bold\":true,\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger cosmétiques set 12\"}},{\"text\":\"\\n \",\"color\":\"reset\"}]"],title:"§a§lCosmétiques",author:Zelonia,display:{Lore:["Les cosmétiques du serveur !"]}}
# ,score_vip_min=1,score_vip=1
replaceitem entity @a[score_etat_min=0,score_etat=0,score_inventaire_min=1,score_inventaire=1] slot.hotbar.6 end_crystal 1 0 {display:{Name:"§5§lJump"},ench:[{id:0,lvl:1}],HideFlags:1}
replaceitem entity @a[score_etat_min=0,score_etat=0,score_inventaire_min=1,score_inventaire=1] slot.hotbar.1 iron_bars 1 0 {display:{Name:"§c§lReport"},ench:[{id:0,lvl:1}],HideFlags:1}
replaceitem entity @a[score_etat_min=0,score_etat=0,score_inventaire_min=1,score_inventaire=1] slot.hotbar.2 clock 1 0 {display:{Name:"§6Hub"},ench:[{id:0,lvl:1}],HideFlags:1}

# Menu 3
execute @a[score_dropCompass_min=1,score_dropCompass=1,score_etat=0] ~ ~ ~ tp @p -24 28 1 92.4 2.3
scoreboard players set @a[score_dropCompass_min=1,score_dropCompass=1,score_etat=0] dropCompass 0

# dropIronBars
execute @a[score_dropIronBars_min=1,score_dropIronBars=1,score_inventaire_min=1,score_inventaire=1] ~ ~ ~ scoreboard players set @p cmd 1
scoreboard players set @a[score_dropIronBars_min=1,score_dropIronBars=1,score_inventaire_min=1,score_inventaire=1] dropIronBars 0

# dropClock
execute @a[score_dropClock_min=1,score_dropClock=1,score_inventaire_min=1,score_inventaire=1] ~ ~ ~ scoreboard players set @p hub 1
scoreboard players set @a[score_dropClock_min=1,score_dropClock=1,score_inventaire_min=1,score_inventaire=1] dropClock 0

# dropEndCrystal
execute @a[score_dropEndCrystal_min=1,score_dropEndCrystal=1,score_inventaire_min=1,score_inventaire=1] ~ ~ ~ scoreboard players set @p etat 11
scoreboard players set @a[score_dropEndCrystal_min=1,score_dropEndCrystal=1,score_inventaire_min=1,score_inventaire=1] dropEndCrystal 0
