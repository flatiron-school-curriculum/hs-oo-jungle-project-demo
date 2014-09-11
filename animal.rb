require 'pry'

class Animal


  attr_accessor :type, :name, :sound, :life_expectancy, :age, :predators, :prey, :home, :offspring

  def initialize(type)
    @type = type
    @prey = []
    @predators = []
    @offspring = 0
  end

  def eat_prey
  end


  def give_birth(number_of_babies)
    number_of_babies.times do
      baby = Animal.new(self.type)
      baby.age = 0
    end
    self.offspring += number_of_babies
  end

end