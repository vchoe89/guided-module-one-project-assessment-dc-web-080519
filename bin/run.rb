require_relative '../config/environment'

cli = CommandLineInterface.new
cli.welcome
cli.first_input
cli.input_handler