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
    puts "5. List the plants"
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
    #add an animal to the jungle
  end

  def make_animal_give_birth
    #create babies!
  end

  def see_animals
    #list all the animals in the jungle
  end

  def make_animal_sounds
    Animal.all.each do |animal|
      `say "#{animal.sound}"`
    end
  end

  def fast_forward
    #adds a year to each animal's life
  end

  def examine_animal
    #prints out all the animals attributes
  end
end

