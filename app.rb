require 'bundler'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'

pepito = User.new("pepito@pepito.com", 29)
pepita = User.new("pepita@pepita.com", 31)

le_gouter = Event.new("2022-02-02 16:30", 30, "Le goûter c'est sacré.", [pepito, pepita])

le_gouter.age_analysis
