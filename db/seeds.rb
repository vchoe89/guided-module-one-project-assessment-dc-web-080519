#Categories
action = Category.find_or_create_by(name:"Action")
action_adventure = Category.find_or_create_by(name:"Action-Adventure")
adventure = Category.find_or_create_by(name:"Adventure")
puzzle = Category.find_or_create_by(name:"Puzzle")
rpg = Category.find_or_create_by(name:"Role-Playing")
simulation = Category.find_or_create_by(name:"Simulation")
sports = Category.find_or_create_by(name:"Sports")
strategy = Category.find_or_create_by(name:"Strategy")

#Games
Game.destroy_all
fortnite = Game.find_or_create_by(name:"Fortnite", category_id: action.id)
pubg = Game.find_or_create_by(name:"PlayerUnknown's Battlegrounds", category_id: action.id)
bttlefld1942 = Game.find_or_create_by(name:"Battlefield 1942", category_id: action.id)
apex = Game.find_or_create_by(name:"APEX Legends", category_id: action.id)
red_dead = Game.find_or_create_by(name:"Red Dead Redemption 2", category_id: action.id)
cod = Game.find_or_create_by(name:"Call of Duty: WWII", category_id: action.id)
star_wars = Game.find_or_create_by(name:"Star Wars Battlefront II", category_id: action.id)
gow = Game.find_or_create_by(name:"God of War", category_id: action_adventure.id)
last_of_us = Game.find_or_create_by(name:"The Last of Us", category_id: action_adventure.id)
spiderman = Game.find_or_create_by(name:"Spiderman", category_id: action_adventure.id)
sea_of_thieves = Game.find_or_create_by(name:"Sea of Thieves", category_id: action_adventure.id)
zelda = Game.find_or_create_by(name:"The Legend of Zelda: Breath of the Wild", category_id: action_adventure.id)
mario_kart = Game.find_or_create_by(name:"Mario Kart 8 Deluxe", category_id: action_adventure.id)
solitude = Game.find_or_create_by(name:"Sea of Solitude", category_id: adventure.id)
outer_wilds = Game.find_or_create_by(name:"Outer Wilds", category_id: adventure.id)
minecraft = Game.find_or_create_by(name:"Minecraft", category_id: adventure.id)
wolf_among_us = Game.find_or_create_by(name:"The Wolf Among Us", category_id: adventure.id)
super_mario = Game.find_or_create_by(name:"Super Mario Odyssey", category_id: adventure.id)
tetri = Game.find_or_create_by(name:"Tetris", category_id: puzzle.id)
snipperclips = Game.find_or_create_by(name:"Snipperclips", category_id: puzzle.id)
kingdom_hearts = Game.find_or_create_by(name:"Kingdom Hearts III", category_id: rpg.id)
anthem = Game.find_or_create_by(name:"Anthem", category_id: rpg.id)
cyberpunk = Game.find_or_create_by(name:"Cyberpunk 2077", category_id: rpg.id)
stardew_valley = Game.find_or_create_by(name:"Stardew Valley", category_id: rpg.id)
cites = Game.find_or_create_by(name:"Cities: Skylines", category_id: simulation.id)
overcooked2 = Game.find_or_create_by(name:"Overcooked 2", category_id: simulation.id)
rkt_league = Game.find_or_create_by(name:"Rocket League", category_id: sports.id)
mdn19 = Game.find_or_create_by(name:"Madden 19", category_id: sports.id)
nba2k = Game.find_or_create_by(name:"NBA 2K18", category_id: sports.id)
fifa = Game.find_or_create_by(name:"FIFA 18", category_id: sports.id)
sc2 = Game.find_or_create_by(name:"StarCraft 2", category_id: strategy.id)
civil = Game.find_or_create_by(name:"Civilization VI", category_id: strategy.id)
csgo = Game.find_or_create_by(name:"Counter-Strike: Global Offensive", category_id: strategy.id)

#Systems
System.destroy_all
pc = System.find_or_create_by(name:"PC")
ps4 = System.find_or_create_by(name:"PlayStation 4")
xb1 = System.find_or_create_by(name:"Xbox One")
swi = System.find_or_create_by(name:"Nintendo Switch")




# binding.pry




#Availableons
# Availableon.find_or_create_by_by(system_id: pc.id, game_id: pubg.id)
# Availableon.find_or_create_by(system_id: pc.id, game_id: fortnite)
# Availableon.find_or_create_by(system_id: xb1.id, game_id: fortnite)
# Availableon.find_or_create_by(system_id: ps4.id, game_id: fortnite)
# Availableon.find_or_create_by(system_id: swi.id, game_id: fortnite)
# Availableon.find_or_create_by(system_id: pc.id, game_id: bttlefld1942)

# binding.pry

pc.games = [pubg, bttlefld1942, apex, red_dead, cod, star_wars, sea_of_thieves, minecraft, snipperclips, 
    anthem, cyberpunk, stardew_valley, overcooked2, rkt_league, sc2, csgo]

ps4.games = [fortnite, bttlefld1942, apex, red_dead, cod, star_wars, gow, last_of_us, spiderman,
 solitude, wolf_among_us, kingdom_hearts, anthem, cyberpunk, stardew_valley, cites, 
 overcooked2, rkt_league, mdn19, nba2k, fifa]

 xb1.games = [fortnite, bttlefld1942, red_dead, star_wars, solitude, outer_wilds, wolf_among_us,
 kingdom_hearts, anthem, cyberpunk, stardew_valley, cites, overcooked2, rkt_league, mdn19, nba2k, fifa]

 swi.games = [fortnite, zelda, mario_kart, super_mario, tetri, snipperclips, 
stardew_valley, cites, overcooked2, fifa, civil]

