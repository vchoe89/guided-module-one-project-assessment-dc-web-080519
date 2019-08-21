class CommandLineInterface

   def intialize
   end
   def welcome
      prompt = TTY::Prompt.new
      system "clear"
      puts "Welcome to the Library of Games!"

      sleep (1)
      prompt.select("How can I help you today") do |menu|
         menu.choice "See All Available Games", -> {see_all_games}
         menu.choice "Find A Game", -> {find_game}
         menu.choice "Donate A Game", -> {add_game}
         menu.choice "Checkout A Game", -> {delete_game}

      end
   end

   def see_all_games
      system "clear"
      puts "Here is the catalog of games."
       game_list = Game.pluck(:name)
       puts game_list
   end


   # end
   

   #1 See all available games (all_games)
      #"Here is a list of all the available games."
      #prints out all games in db w/name of game and system
      #will probably have to call through join table id then their name
      ###Maybe add a go back option?###
   
   #2 Find a game
      #"Would you like to search by system, name, or category?"
      #1 System
      #2 Name
      #3 Category
      ###Maybe add a go back option?###
   
   #2.1 Find by system
      #"Which system would you like to search by?"
      #1 PC (prints all pc)
      #2 Nintendo Switch (prints all swi)
      #3 PlayStation 4 (prints all ps4)
      #4 Xbox One (prints all xb1)

   #2.2 Find by name
      #"Enter the title you are looking for."
      # User can type in a name
      # Compares input to games table
      # If found, print out name, category, system
      # Would probably need to make own select or find method (downcasing name string and downcasing response and compare)
      # If not found, "Sorry, that title is not in our system."
      ###Maybe ask if they would like to add the searched game into library and route to add_game method###
   
   #2.3 Find by category
      # "Which category would you like to search by?"
      #1 Action 
      #2 Action-Adventure
      #3 Adventure
      #4 Role-Playing
      #5 Simulation
      #6 Strategy
      #7 Sports
      #8 Puzzle
      #Each number would print out the title and system it is on
      #Each number would print out the titles and system it is on
      ###Titles have more than one system, see if can make into list to one game (Fortnite - PC, PS4, Nintendo Switch, Xbox One)

   #3 Donate a game
      #"Oh, how nice of you to donate to our library! We need the following information:"
      #Name
      #Category
      #System
      #"Thank you for contributing to our library!"
   #4 Checkout a game
      # "What game would you like to check out?"
      # User inputs name of game (will probably have to call on downcase method)
end