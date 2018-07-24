
class Cat

  def initialize (name, preferred_food, meal_time, preferred_game)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
    @preferred_game = preferred_game
  end

  def eats_at
    if @meal_time <12
      return "#{@meal_time} am"
    else
      return "#{@meal_time-12} pm"
    end
  end

  def meow
    return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}, and my favorite game is #{@preferred_game}"
  end

  def preferred_game=(preferred_game)
    @preferred_game = preferred_game
  end

  def preferred_game
    return @preferred_game
  end



end

pet = Cat.new('Bobby', 'Fancy feast', 13, 'fetch')
pet2 = Cat.new('Sasha', 'Fish', 18, 'scratch')
#
# puts "#{pet}"
# puts pet2
#
# time = Cat.new('11am')
#
# puts time

puts pet.eats_at

puts pet.meow

puts pet2.meow

puts pet.preferred_game = "Jump" # --> changing the value set when method is called will require a getter to retrieve new info
puts pet2.preferred_game = "Tag"
puts pet.meow
puts pet2.meow

# --> you can use getters and setters as another way of receiving info
# short cut for writing and reading multiple methods: attr_reader :(name of readert)
