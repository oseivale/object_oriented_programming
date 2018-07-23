class Dog

# def breed #we are asking for the breed, getting it (getter)
#   return @breed
# end

#What is the difference between @breed and def breed
# @breed = variable, def breed is a method

# def breed=(breed_name) # --> setter for our breed name
#   @breed=breed_name
# end

def run
@speed += 10
end

def speed
return @speed
end

end

#when  we set smth we have to accept an argument
#name of the setter must have '=' sign as part of it


fido = Dog.new # --> 'fido' is a variable that contains a class
rex = Dog.new # --> creating another new Dog, they are instances of Dog class
#Dog is a class that we are creating on our own
#you can instantiate an empty class and create smth from it

#some states that we can have for dog; breed, name

#we need to get and set our states
#we need smth that allows us to get and set the state (whatever that is)

fido.breed=("German Shepperd")
puts fido.breed

# as long as you have a getter, you can get the info
# and as long as you have setter, you can set the value outside the class
