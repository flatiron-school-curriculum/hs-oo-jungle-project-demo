require 'pry'

class Animal
  ANIMALS = []
  attr_accessor :type, :name, :sound, :life_expectancy, :age, :predators, :prey, :home, :offspring

  def initialize(type)
    @type = type
    @prey = []
    @predators = []
    @offspring = 0
    ANIMALS << self
  end
  
  def self.all
    ANIMALS
  end

  def give_birth(number_of_babies)
    #create new animal babies and increment the mama's number of offspring
  end
end