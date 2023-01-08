schedule function pack:second 1s
execute if score FullBorderClose Game matches 1.. run scoreboard players remove FullBorderClose Game 1
execute if score GracePeriodEnd Game matches 1.. run scoreboard players remove GracePeriodEnd Game 1
execute if score Deathmatch Game matches 1.. run scoreboard players remove Deathmatch Game 1
execute if score Deathmatch Game matches 0 at @e[tag=pos] run fill ~10 319 ~10 ~-10 319 ~-10 bedrock
execute if score Deathmatch Game matches 0 at @e[tag=pos] run tp @a ~ 321 ~
execute if score GracePeriodEnd Game matches 0 run tellraw @a "Grace period has now ended. You have 20 minutes until the border fully closes."
execute if score FullBorderClose Game matches 0 run tellraw @a "The border has now fully closed. You have 5 minutes until deathmatch begins"
execute if score Deathmatch Game matches 0 run tellraw @a "Deathmatch has begun. Remmeber, the last one standing wins!"
execute if score GracePeriodEnd Game matches 0 run scoreboard players reset GracePeriodEnd
execute if score FullBorderClose Game matches 0 run scoreboard players reset FullBorderClose
execute if score Deathmatch Game matches 0 run scoreboard players reset Deathmatch