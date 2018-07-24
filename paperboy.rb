
class Paperboy

  def initialize(name)
    @name = name
    @earnings = earnings
    @counter=0
    # @earnings= 0.25*@experience + 0.50*(@experience - @quota)
    # if @experience < @quota
    #   @earnings -=2
    # end
  end

  def experience=(experience) # -> number of papers delivered
    @experience = experience
  end

  def experience
    return @experience
  end

  def earnings
    return @earnings
  end

  def quota
    @quota = 50 + (@experience/2)
    return @quota
  end

  def over_quota
    return @over_quota
  end

  def deliver(end_address, start_address)
    @experience = end_address - start_address
    @deliver = @experience * 0.25
    #calculated #of papers delivered, and earnings within quota
    if @experience > 50
      @over_quota = @experience - 50 # -> how many more papers than 50 were delivered?
      # @counter += (1 * @experience)
      @deliver = @deliver + (@over_quota* 0.50)
    end
  end

  def report
    return "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@deliver} so far!"
  end



end

tommy = Paperboy.new("Tommy")
puts tommy.deliver(120, 55)


puts tommy.quota
puts tommy.report
