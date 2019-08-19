#Games
fortnite = Game.create(name:"Fortnite", category:"Action")
pubg = Game.create(name:"PlayerUnknown's Battlegrounds", category:"Action")
#Systems
pc = System.create(name:"PC")
ps4 = System.create(name:"PlayStation 4")
xb1 = System.create(name:"Xbox One")
swi = System.create(name:"Nintendo Switch")
#Availableons
Availableon.create(system_id: pc.id, game_id: pubg.id)