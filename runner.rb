require_relative './animal.rb'
require_relative './jungle.rb'

j = Animal.new("frog")
j.name = "Kermit"
j.predators = "dogs"
j.prey = "bugs"
j.sound = "ribbit"
j.age = 12
j.life_expectancy = "15"

new_jungle = Jungle.new

