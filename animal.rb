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
    `say "oh. oh. oh. I'm having a #{self.type}. #{self.sound}"`
    number_of_babies.to_i.times do
      baby = Animal.new(self.type)
      baby.age = 0
      baby.name = self.name + "-" + (rand(1..1000).to_s)
      baby.predators = self.predators
      baby.prey = self.prey
      baby.sound = self.sound
      baby.home = self.home
      baby.life_expectancy = self.life_expectancy
    end
    self.offspring += number_of_babies.to_i

  end

end