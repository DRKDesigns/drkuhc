scoreboard players add @a Join 1
execute as @a[scores={StartUHC=1..}] run kill @e[tag=pos]
execute as @a[scores={StartUHC=1..}] at @s run summon armor_stand ~ 0 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["pos"]}
execute as @a[scores={StartUHC=1..}] at @e[tag=pos] run worldborder center ~ ~
execute as @a[scores={StartUHC=1..}] at @e[tag=pos] run setworldspawn ~ ~ ~
execute as @a[scores={StartUHC=1..}] at @e[tag=pos] run tp @a ~ 256 ~
execute as @a[scores={StartUHC=1..}] run worldborder set 500
execute as @a[scores={StartUHC=1..}] run worldborder set 10 1500
execute as @a[scores={StartUHC=1..}] run advancement revoke @a everything
execute as @a[scores={StartUHC=1..}] run clear @a
execute as @a[scores={StartUHC=1..}] run give @a compass
execute as @a[scores={StartUHC=1..}] run give @a cooked_beef 10
execute as @a[scores={StartUHC=1..}] run gamemode survival @a
execute as @a[scores={StartUHC=1..}] run effect clear @a
execute as @a[scores={StartUHC=1..}] run effect give @a regeneration 1 255 true
execute as @a[scores={StartUHC=1..}] run effect give @a saturation 1 255 true
execute as @a[scores={StartUHC=1..}] run xp set @a 0 levels
execute as @a[scores={StartUHC=1..}] run xp set @a 0 points
execute as @a[scores={StartUHC=1..}] run effect give @a resistance 300 255 true
execute as @a[scores={StartUHC=1..}] run scoreboard players reset * TopKills
execute as @a[scores={StartUHC=1..}] run item replace entity @a armor.chest with minecraft:elytra
execute as @a[scores={StartUHC=1..}] run time set day
execute as @a[scores={StartUHC=1..}] run tellraw @a "The game has started. You have 5 minutes until the grace period ends."
execute as @a[scores={StartUHC=1..}] run scoreboard players set Deathmatch Game 1800
execute as @a[scores={StartUHC=1..}] run scoreboard players set FullBorderClose Game 1500
execute as @a[scores={StartUHC=1..}] run scoreboard players set GracePeriodEnd Game 300
execute as @a[scores={StartUHC=1..}] run scoreboard players reset * WasInMatch
execute as @a[scores={StartUHC=1..}] run scoreboard players set @a WasInMatch 1

execute if score PlayersLeft Game matches 1 run title @a times 10 50 10
execute if score PlayersLeft Game matches 1 run scoreboard players add @a[nbt={playerGameType:0}] Death 1
execute if score PlayersLeft Game matches 1 run title @a[nbt={playerGameType:0}] title {"text":"Victory!","color":"gold"}
execute if score PlayersLeft Game matches 1 run title @a[nbt={playerGameType:3}] title {"text":"Game Over!","color":"dark_red"}
kill @a[scores={Leave=1..}]
kill @a[scores={Join=1}]
give @a[scores={Kill=1..}] golden_apple
team join Alive @a[scores={Death=1..}]
gamemode spectator @a[scores={Death=1..}]
execute as @a at @s if block ~ ~-1 ~ #pack:ground run clear @s elytra
execute store result score PlayersLeft Game run tag @a[nbt={playerGameType:0},team=Alive] add Tested
execute store result score RedLeft Game run tag @a[nbt={playerGameType:0},team=Red] add Tested
execute store result score BlueLeft Game run tag @a[nbt={playerGameType:0},team=Blue] add Tested
execute if score RedLeft Game matches 0 run scoreboard players reset RedLeft
execute if score BlueLeft Game matches 0 run scoreboard players reset BlueLeft
execute if score PlayersLeft Game matches 0 run scoreboard players reset PlayersLeft
tag @a remove Tested

execute as @a[scores={Spectate=1..}] at @s run tp @e[type=wolf,limit=1,sort=nearest] ~ ~ ~
execute as @a[scores={TeamGame=1..}] run scoreboard players enable @a JoinRed
execute as @a[scores={TeamGame=1..}] run scoreboard players enable @a JoinBlue

team join Red @a[scores={JoinRed=1..}]
team join Blue @a[scores={JoinBlue=1..}]
scoreboard players enable @a[tag=admin] Spectate
scoreboard players enable @a[tag=admin] TeamGame
scoreboard players enable @a[tag=admin] StartUHC
scoreboard players set @a StartUHC 0
scoreboard players set @a Leave 0
scoreboard players set @a Death 0
scoreboard players set @a Join 2
scoreboard players set @a JoinRed 0
scoreboard players set @a JoinBlue 0
scoreboard players set @a TeamGame 0
scoreboard players set @a Kill 0