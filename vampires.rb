
class Vampire

  @@coven = []

  def initialize(name, age, in_coffin, drank_blood_today)
    @name = name
    @age = age
    @in_coffin = in_coffin
    @drank_blood_today =  drank_blood_today


  end

  def self.create(name, age, in_coffin, drank_blood_today)
    new_vampire = Vampire.new(name, age, in_coffin, drank_blood_today)
    @@coven << new_vampire
    return @@coven
  end

  def drink_blood
    drank_blood_today = true
  end

  def in_coffin
    return @in_coffin
  end

  def in_coffin=(in_coffin)
    @in_coffin = in_coffin
  end

  def drank_blood_today
    return @drank_blood_today
  end

  def drank_blood_today=(drank_blood_today)
    @drank_blood_today = drank_blood_today
  end

  def self.coven
    return @@coven
  end

  def self.sunrise

    @@coven.delete_if do |vampire|
      vampire.in_coffin == false || vampire.drank_blood_today == false
    end

    # @@coven.each do |vampire| # --> iterating over the each loop
    #   if vampire.in_coffin == false || vampire.drank_blood_today == false
    #     @@coven.delete(vampire)
    #   end
    # end
    return @@coven

  end

  def self.sunset
      @@coven.each do |vampire|
      vampire.drank_blood_today = false
      vampire.in_coffin = false
    end

    return @@coven
  end

end
# tom = Vampire.new("Tom", 25, true, true,)
# p Vampire.new("Tom", 25, true, true,)



p Vampire.create("Tom", 25, true, true)
p Vampire.create("Shelly", 32, false, false)
p Vampire.create("Dave", 25, true, false)
p Vampire.create("Sally", 32, true, false)

# shelly = Vampire.new("Shelly", 32, false, false)

p Vampire.coven

# Vampire.sunrise

# p Vampire.coven
#
Vampire.sunset

p Vampire.coven
