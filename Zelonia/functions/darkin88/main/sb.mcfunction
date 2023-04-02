#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################

# Connectés
scoreboard players set Connectés sb2 0
execute @a ~ ~ ~ scoreboard players add Connectés sb2 1
scoreboard players operation Connectés sb2 >< Connectés sb

# PvP box
scoreboard players set PVPbox sb2 0
execute @a[score_etat_min=1,score_etat=2] ~ ~ ~ scoreboard players add PVPbox sb2 1
scoreboard players operation PVPbox sb2 >< PVPbox sb

# TNT run
scoreboard players set TNTrun sb2 0
execute @a[score_etat_min=3,score_etat=6] ~ ~ ~ scoreboard players add TNTrun sb2 1
scoreboard players operation TNTrun sb2 >< TNTrun sb

# Spleef
scoreboard players set Spleef sb2 0
execute @a[score_etat_min=7,score_etat=10] ~ ~ ~ scoreboard players add Spleef sb2 1
scoreboard players operation Spleef sb2 >< Spleef sb

# Jump
scoreboard players set Jump sb2 0
execute @a[score_etat_min=11,score_etat=13] ~ ~ ~ scoreboard players add Jump sb2 1
scoreboard players operation Jump sb2 >< Jump sb

# KbFFA
scoreboard players set KbFFA sb2 0
execute @a[score_etat_min=14,score_etat=15] ~ ~ ~ scoreboard players add KbFFA sb2 1
scoreboard players operation KbFFA sb2 >< KbFFA sb
