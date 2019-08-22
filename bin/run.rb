require_relative '../config/environment'
require "tty-prompt"
cli = CommandLineInterface.new
ActiveRecord::Base.logger = nil


cli.welcome

#Pry.start
#cli.first_input
#cli.input_handler