class CommandLineInterface
   def welcome
      puts "Welcome to the Library of Games!"
      #Fancy stylistics
   end

   def first_input
      puts "How can I help you today?"
      
      #Has user type in corresponding number to option
      #1 See all available games (Create)
      #2 Find a game (Read)
      #3 Donate a game (Update)
      #4 Checkout a game (Delete)
      gets.chomp
   end
   
   def view_options
      puts "See all available games."
      puts "Find a game."
   end

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
end
