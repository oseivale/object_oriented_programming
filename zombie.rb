
class Zombie
  @@horde = []
  @@plague = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  def initialize (zombie_speed, zombie_strength)
    @zombie_speed = zombie_speed
    @zombie_strength = zombie_strength

    if zombie_speed > @@max_speed
      zombie_speed = @@default_speed
    end
    if zombie_strength <= @@max_strength
      zombie_strength = @@default_strength
    end
  end

  def encounter
    outrun_zombie?
    survive_attack?
    if outrun_zombie? == true
      me_zombie = Zombie.new
      @@horde << me_zombie
      puts "I've caught the plague, I'm a zombie!"
    elsif survive_attack? == true
      puts "I've escaped! I've survived the zombie attack!"
    elsif survive_attack? == false || outrun_zombie? == false
      puts "I've been killed!"
    end
  end

  def outrun_zombie? (my_speed)
    @@max_speed = Random.rand

    if @@max_speed > @zombie_speed
      return true
    else
      return false
    end
  end

  def survive_attack?
    @@max_strength = Random.rand
    if @@max_strength > @zombie_strength
      return true
    else
      return false
    end
  end


  def self.all
    return @@horde
  end


  def self.new_day
    # some_die_off
    # spawn
    # increase_plague_level
  end

  def self.some_die_off
    dying_zombie = Random.rand(0..10)
    dying_zombie.each do |item|
      @@horde.delete(item)
    end

    #remove random number of zombies from horde
  end

  def self.spawn
    @@plague_level = Random.rand
    return @@plague_level
    @@max_speed = Random.rand
    return @@max_speed
    @@max_strength = Random.rand
    return @@max_strength
  end

  def self.create
    new_zombie = Zombie.new # * @@plague_level
    @@horde << new_zombie
    return new_zombie
  end

  def increase_plague_level
    increase_amount = Random.rand(0..2)
    @@plague_level += increase_amount
  end


end

p Zombie.new(5,10)
puts Zombie.all.inspect
p Zombie.new_day

p Zombie.all
#
p Zombie.create

# zombie1 = Zombie.all[0]
# zombie2 = Zombie.all[1]
# zombie3 = Zombie.all[2]
#
# p zombie1.encounter
