class CommandLineInterface
   def welcome
      puts "Welcome to the Library of Games!"
      #Fancy stylistics
   end

   def help
      puts "How can I help you today?"
      #Has user type in corresponding number to option
      #1 See all available games (Create)
      #2 Find a game (Read)
      #3 Donate a game (Update)
      #4 Checkout a game (Delete)
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
      
end
