scoreboard objectives add StartUHC trigger
scoreboard objectives add JoinRed trigger
scoreboard objectives add JoinBlue trigger
scoreboard objectives add TeamGame trigger
scoreboard objectives add Spectate trigger
scoreboard objectives add Alive dummy
scoreboard objectives add Wins dummy
scoreboard objectives add Join dummy
scoreboard objectives add Game dummy
scoreboard objectives add WasInMatch dummy
scoreboard objectives add TopKills playerKillCount
scoreboard objectives add Kill playerKillCount
scoreboard objectives add Leave custom:leave_game
scoreboard objectives add Death deathCount
scoreboard objectives setdisplay list TopKills
scoreboard objectives setdisplay sidebar Game
gamerule announceAdvancements false
team add Red
team add Blue
team add Alive
team modify Alive nametagVisibility never
team modify Red nametagVisibility hideForOtherTeams
team modify Blue nametagVisibility hideForOtherTeams
team modify Red color red
team modify Blue color blue
team modify Red friendlyFire false
team modify Blue friendlyFire false
team join Blue BlueLeft
team join Red RedLeft
function pack:second