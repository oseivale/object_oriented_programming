
class Cat

def initialize (name, preferred_food, meal_time)
  @name = name
  @preferred_food = preferred_food
  @meal_time = meal_time
end

def eats_at=(eats_at)
  @eats_at = eats_at
end

def eats_at
  return @eats_at
end



end

pet = Cat.new('Bobby', 'Fancy feast', 'lunch')
pet2 = Cat.new('Sasha', 'Fish', 'dinner')

puts "#{pet}"
puts pet2

time = Cat.new('11am')

puts time
