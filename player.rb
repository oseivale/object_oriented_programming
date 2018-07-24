
class Player

attr_reader :lives, :gold_coins, :health_points #--> writing short cut for getter (reader)

  def initialize # --> you do not have to pass anything thru, becauvse values are set at specific values.
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives +=1
  end

  def collect_treasure
    @gold_coins +=1
    if @gold_coins %10 == 0
    level_up
    end
  end

  def do_battle(damage)
      @health_points -=damage
    if @health_points < 1
      @lives -=1
      @health_points = 10
    end

    if @lives == 0
      restart
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def play
    return "This player has #{@gold_coins} gold coins, #{@health_points} health points, and #{@lives} lives."
  end


end

player = Player.new

# puts "This player has #{@gold_coins} gold coins, #{@health_points} health points, and #{@lives} lives."

rand(10).times do
  player.collect_treasure
  player.do_battle(1)

end


puts "Health: #{player.health_points}"
puts "Gold: #{player.gold_coins}"
puts "Lives: #{player.lives}"
