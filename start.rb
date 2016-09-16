#! /Users/Martin/.rvm/rubies/ruby-2.3.0/bin/ruby
# Objectives
#
# 1. Working with files: require features and load config files
# 2. Environment variables
# 3. Setup a typical ruby skeleton project
# ---------------------------------------------------------------------
# The application starts here:
# Add current directory and ./lib sub folder to load path
$: << "."
$: << "./lib"

# require app wide features
require 'yaml'
require 'logger'
require 'tty-prompt'

# Load app configiration file
app_cnf = YAML::load_file(File.join(__dir__, 'config.yml'))

# Initialize the application log
$LOG = Logger.new('log/' + app_cnf['log_file'], 0, 1024 * 1024)
$LOG.info "App started"

require 'drone'

prompt = TTY::Prompt.new
name = prompt.ask('Drone name (leave empty for default):')

my_drone = MBDrones::Drone.new(name: name)

puts "+++++++ Drone games +++++++++"
# about = app_cnf['about']
puts "Drone " + my_drone.name + " is ready."
puts "Initial position: " + my_drone.position['latitude'].to_s + " | " + my_drone.position['longitude'].to_s

# Access a constant defined inside module MBDrones
puts MBDrones::MY_CONST

# Access the environmental variable MARTINS_CAR from Ruby
puts ENV['MARTINS_CAR']
puts "Das war ein schöner Flug."
