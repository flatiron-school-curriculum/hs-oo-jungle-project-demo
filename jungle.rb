require 'pry'

class Jungle
  attr_accessor :size, :name, :location, :rainfall, :plants, :animals

  def initialize
    puts "What is the Jungle's name?"
    @name = gets.chomp.strip
    puts "where is the jungle located?"
    @location = gets.chomp
    menu
  end

  def menu
    puts "THESE ARE YOUR OPTIONS:"
    puts "1. Add an animal"
    puts "2. Examine an animal"
    puts "3. Go forward one year in time"
    puts "4. List the animals"
    # puts "5. List the plants"
    puts "6. Get an animal to have babies"
    puts "7. Make all the animals make noise"
    puts "8. Get one animal to eat another"
    puts "9. Quit"
    puts "what would you like to do?"
    get_user_choice
  end

  def get_user_choice
    choice = gets.chomp.to_i
    case choice
      when 1 then add_animal
      when 2 then examine_animal
      when 3 then fast_forward
      when 4 then see_animals
      when 6 then make_animal_give_birth
      when 7 then make_animal_sounds
      when 9 then puts "goodbye"
      else puts "That doesn't make sense"
    end
    menu unless choice == 9
  end

  def add_animal
    puts "what kind of animal is this?"
    new_animal = Animal.new(gets.chomp)
    puts "what is the animal's name?"
    new_animal.name = gets.chomp
    puts "what is #{new_animal.type}'s life expectancy?"
    new_animal.life_expectancy = gets.chomp.to_i
    puts "what does #{new_animal.type} eat? (separate with commas)"
    new_animal.prey = gets.chomp.split(",").collect { |item| item.strip }
    puts "what hunts this animal? (separate with commas)"
    new_animal.predators = gets.chomp.split(",").collect { |item| item.strip }
    puts "what sound does this animal make?"
    new_animal.sound = gets.chomp
    new_animal.age = rand(1..new_animal.life_expectancy.to_i)
  end

  def make_animal_give_birth
    puts "which animal would you like to give birth?"
    see_animals
    animal = Animal.all[gets.chomp.to_i]
    puts "how many babies would you like #{animal.name} to have?"
    animal.give_birth(gets.chomp)
  end

  def see_animals
    puts "These are the animals in the jungle"
    Animal.all.each_with_index do |animal, i|
      puts "#{i}. #{animal.name} the #{animal.type}"
    end
  end

  def make_animal_sounds
    Animal.all.each do |a|
      `say "#{a.sound}"`
    end
  end

  def fast_forward
    Animal.all.each do |animal|
      animal.age += 1
    end
  end

  def examine_animal
    puts "what animal would you like to examine?"
    see_animals
    animal = Animal.all[gets.chomp.to_i]
    `say "#{animal.sound}"`
    puts "#{animal.name.capitalize} is a #{animal.type} and is #{animal.age} years old (#{animal.type}s have a life expectancy of #{animal.life_expectancy}). It eats #{animal.prey.join(" and ")} and is eaten by #{animal.predators.join(" and ")}. It has #{animal.offspring} children."
  end
end

