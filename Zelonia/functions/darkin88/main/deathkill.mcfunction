#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


# Heal au kill
effect @a[score_heal_min=1,score_heal=1] minecraft:instant_health 1 1 true
effect @a[score_heal_min=1,score_heal=1] minecraft:speed 2 0 true
give @a[score_heal_min=1,score_heal=1,score_etat_min=2,score_etat=2] minecraft:golden_apple 1
give @a[score_heal_min=1,score_heal=1,score_etat_min=2,score_etat=2,score_kitpvp_min=101] minecraft:arrow 5
scoreboard players set @a[score_heal_min=1,score_heal=1] heal 0

# Message mort
execute @a[score_deathMessage_min=1] ~ ~ ~ title @a actionbar ["",{"selector":"@a[score_deathMessage_min=1]"},{"text":" est mort :( !"}]
scoreboard players set @a[score_deathMessage_min=1] deathMessage 0

# Message kill
execute @a[score_killMessage_min=1,score_etat_min=1,score_etat=2] ~ ~ ~ tellraw @a [{"text":"\nPVP Box> ","color":"gold","bold":"true"},{"selector":"@a[score_killMessage_min=1,score_etat_min=1,score_etat=2]"},{"text":" a fait un kill !","color":"white","bold":"true"}]
scoreboard players set @a[score_killMessage_min=1] killMessage 0

# Joueurs qui meurent
clear @a[score_mort_min=1,score_mort=1]
effect @a[score_mort_min=1,score_mort=1] clear
gamemode 2 @a[score_mort_min=1,score_mort=1]
execute @a[score_mort_min=1,score_mort=1] ~ ~ ~ summon fireworks_rocket
execute @a[score_mort_min=1,score_mort=1,score_etat_min=1,score_etat=2] ~ ~ ~ summon lightning_bolt ~ ~3 ~
scoreboard players set @a[score_mort_min=1,score_mort=1,score_etat_min=1,score_etat=2] etat 1
scoreboard players set @a[score_mort_min=1,score_mort=1,score_etat_min=1,score_etat=2] deathMessage 1
scoreboard players set @a[score_mort_min=1,score_mort=1,score_etat_min=3] etat 0
scoreboard players set @a[score_mort_min=1,score_mort=1] sp 0
scoreboard players set @a[score_mort_min=1,score_mort=1] spectator 0
scoreboard players set @a[score_mort_min=1,score_mort=1] tntrun 0
scoreboard players set @a[score_mort_min=1,score_mort=1] inventaire 0
scoreboard players enable @a[score_mort_min=1,score_mort=1] join
scoreboard teams leave @a[score_mort_min=1,score_mort=1]
effect @a[score_mort_min=1,score_mort=1] regeneration 5 255 true
scoreboard players set @a[score_mort_min=1,score_mort=1] mort 0