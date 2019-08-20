#Games
Game.destroy_all
fortnite = Game.find_or_create_by(name:"Fortnite", category:"Action")
pubg = Game.find_or_create_by(name:"PlayerUnknown's Battlegrounds", category:"Action")
bttlefld1942 = Game.find_or_create_by(name:"Battlefield 1942", category:"Action")
apex = Game.find_or_create_by(name:"APEX Legends", category:"Action")
red_dead = Game.find_or_create_by(name:"Red Dead Redemption 2", category:"Action")
cod = Game.find_or_create_by(name:"Call of Duty: WWII", category:"Action")
star_wars = Game.find_or_create_by(name:"Star Wars Battlefront II", category:"Action")
gow = Game.find_or_create_by(name:"God of War", category:"Action-Adventure")
last_of_us = Game.find_or_create_by(name:"The Last of Us", category:"Action-Adventure")
spiderman = Game.find_or_create_by(name:"Spiderman", category:"Action-Adventure")
sea_of_thieves = Game.find_or_create_by(name:"Sea of Thieves", category:"Action-Adventure")
zelda = Game.find_or_create_by(name:"The Legend of Zelda: Breath of the Wild", category:"Action-Adventure")
mario_kart = Game.find_or_create_by(name:"Mario Kart 8 Deluxe", category:"Action-Adventure")
solitude = Game.find_or_create_by(name:"Sea of Solitude", category:"Adventure")
outer_wilds = Game.find_or_create_by(name:"Outer Wilds", category:"Adventure")
minecraft = Game.find_or_create_by(name:"Minecraft", category:"Adventure")
wolf_among_us = Game.find_or_create_by(name:"The Wolf Among Us", category:"Adventure")
super_mario = Game.find_or_create_by(name:"Super Mario Odyssey", category:"Adventure")
tetri = Game.find_or_create_by(name:"Tetris", category:"Puzzle")
snipperclips = Game.find_or_create_by(name:"Snipperclips", category:"Puzzle")
kingdom_hearts = Game.find_or_create_by(name:"Kingdom Hearts III", category:"Role-playing")
anthem = Game.find_or_create_by(name:"Anthem", category:"Role-playing")
cyberpunk = Game.find_or_create_by(name:"Cyberpunk 2077", category:"Role-playing")
stardew_valley = Game.find_or_create_by(name:"Stardew Valley", category:"Role-playing")
cites = Game.find_or_create_by(name:"Cities: Skylines", category:"Simulation")
overcooked2 = Game.find_or_create_by(name:"Overcooked 2", category:"Simulation")
rkt_league = Game.find_or_create_by(name:"Rocket League", category:"Sports")
mdn19 = Game.find_or_create_by(name:"Madden 19", category:"Sports")
nba2k = Game.find_or_create_by(name:"NBA 2K18", category:"Sports")
fifa = Game.find_or_create_by(name:"FIFA 18", category:"Sports")
sc2 = Game.find_or_create_by(name:"StarCraft 2", category:"Stategy")
civil = Game.find_or_create_by(name:"Civilization VI", category:"Strategy")
csgo = Game.find_or_create_by(name:"Counter-Strike: Global Offensive", category:"Strategy")

#Systems
System.destroy_all
pc = System.find_or_create_by(name:"PC")
ps4 = System.find_or_create_by(name:"PlayStation 4")
xb1 = System.find_or_create_by(name:"Xbox One")
swi = System.find_or_create_by(name:"Nintendo Switch")
#Availableons
# Availableon.find_or_create_by_by(system_id: pc.id, game_id: pubg.id)
# Availableon.find_or_create_by(system_id: pc.id, game_id: fortnite)
# Availableon.find_or_create_by(system_id: xb1.id, game_id: fortnite)
# Availableon.find_or_create_by(system_id: ps4.id, game_id: fortnite)
# Availableon.find_or_create_by(system_id: swi.id, game_id: fortnite)
# Availableon.find_or_create_by(system_id: pc.id, game_id: bttlefld1942)

binding.pry

pc.games = [pubg, bttlefld1942, apex, red_dead, cod, star_wars, sea_of_thieves, minecraft, snipperclips, anthem, cyberpunk, stardew_valley, overcooked2, rkt_league, sc2, csgo]
ps4.games = [fortnite, bttlefld1942, apex, red_dead, cod, star_wars, gow, last_of_us, spiderman, solitude, wolf_among_us, kingdom_hearts, anthem, cyberpunk, stardew_valley, cites, overcooked2, rkt_league, mdn19, nba2k, fifa]
xb1.games = [fortnite, bttlefld1942, red_dead, star_wars, solitude, outer_wilds, wolf_among_us, kingdom_hearts, anthem, cyberpunk, stardew_valley, cites, overcooked2, rkt_league, mdn19, nba, fifa]
swi.games = [fortnite, zelda, mario_kart, super_mario, tetri, snipperclips, stardew_valley, cites, overcooked2,fifa, civil]