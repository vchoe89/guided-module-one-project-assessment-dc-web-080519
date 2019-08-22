class CommandLineInterface

   #Welcomes the User and gives them a list of options to choose from
   def welcome
      prompt = TTY::Prompt.new
      system "clear"
      # a = Artii::Base.new :font => 'slant'
      # puts a.asciify('GameDestination')
      font = TTY::Font.new(:doom)
      puts font.write("Gaming Destination")
      puts "Welcome to the Library of Games!"

      sleep (0.5)
      prompt.select("How can I help you today") do |menu|
         menu.choice "See All Available Games", -> {see_all_games}
         menu.choice "Find A Game", -> {find_game}
         menu.choice "Donate A Game", -> {add_game}
         menu.choice "Checkout A Game", -> {delete_game}
      end
   end

   def clear
      system "clear"
   end
   
   #Shows the user a list of all games
   def see_all_games
      system "clear"
      puts "Here is the catalog of games."
       game_list = Game.pluck(:name)
       puts game_list
       puts puts
       prompt = TTY::Prompt.new
       prompt.select("What would you like to do?") do |menu|
         menu.choice "Go back to main menu", -> {welcome}
         menu.choice "Exit", -> {clear}
       end
   end

   #Allows user to search by system, name, category
   def find_game
      prompt = TTY::Prompt.new
      prompt.select("Would you like to search by..") do |menu|
         menu.choice "System", -> {view_by_system}
         menu.choice "Category", -> {view_by_category}
         menu.choice "Back to Main Menu", -> {welcome}
      end
   end
   
   #If user choose system, will show the list of systems
   def view_by_system
      system "clear"
      prompt = TTY::Prompt.new
      prompt.select("Choose a console to view games") do |menu|
         menu.choice "PC", -> {show_games_by_system("PC")}
         menu.choice "PlayStation 4", -> {show_games_by_system("PlayStation 4")}
         menu.choice "XBOX1", -> {show_games_by_system("Xbox One")}
         menu.choice "Nintendo Switch", -> {show_games_by_system("Nintendo Switch")}
      end
   end
   
   # Shows the list of games for that particular system the user selects
   def show_games_by_system(system)
      system "clear"
      puts "Here are all of our games available for #{system}"
         system = System.find_by(name:system)
         system.games.each do |game|
            puts game.name
         end
         puts puts
         prompt = TTY::Prompt.new
         prompt.select("What would you like to do?") do |menu|
            menu.choice "Back to Main Menu", -> {welcome}
            menu.choice "Exit", -> {clear}
         end

   end
      
   #Shows the user a list of categories to choose from
   def view_by_category
      system "clear"
      prompt = TTY::Prompt.new
      prompt.select ("Choose a category") do |menu|
         menu.choice "Action", -> {show_games_by_category("Action")}
         menu.choice "Action-Adventure", -> {show_games_by_category("Action-Adventure")}
         menu.choice "Adventure", -> {show_games_by_category("Adventure")}
         menu.choice "Puzzle", -> {show_games_by_category("Puzzle")}
         menu.choice "Role-playing", -> {show_games_by_category("Role-playing")}
         menu.choice "Simulation", -> {show_games_by_category("Simulation")}
         menu.choice "Sports", -> {show_games_by_category("Sports")}
         menu.choice "Strategy", -> {show_games_by_category("Strategy")}
      end
   end

   #Shows the user all games for that particular category the user select
   def show_games_by_category(category)
      system "clear"
      puts "Here are all of our #{category} games"
         category = Category.find_by(name:category)
         category.games.each do |game|
            puts game.name
         end
         puts puts
         prompt = TTY::Prompt.new
         prompt.select("What would you like to do?") do |menu|
            menu.choice "Back to Main Menu", -> {welcome}
            menu.choice "Exit", -> {clear}
         end   
   end
   
   #User will donate a game to the libraray
   def add_game
      system "clear"
      puts "Enter the name of the game"
      game_name = gets.strip
      puts "Enter the category"
      category_name = gets.strip
      updated_category = Category.find_by(name:category_name)
      puts "What console is this game for?"
      system_name = gets.strip
      updated_system = System.find_by(name:system_name)
      new_game = Game.find_or_create_by(name:game_name, category_id:updated_category.id)
      Gamesystem.find_or_create_by(game_id:new_game.id, system_id:updated_system.id)
      puts "Thank you for contributing to our library!"
      prompt = TTY::Prompt.new
      prompt.select("") do |menu|
         menu.choice "Back to Main Menu", -> {welcome}
         menu.choice "Exit", -> {clear}
      end
   end


   
   #4 Checkout a game
      # "What game would you like to check out?"
      # User inputs name of game (will probably have to call on downcase method)
end