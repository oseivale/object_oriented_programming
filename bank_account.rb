
class BankAccount


  def initialize
    @balance = 0
    @interest_rate = 0.01
    # @interest_rate = interest_rate
  end

#Getting and setting the total_balance

#Getter for balance /reader
  def balance
    return @balance
  end

#Setter for balance / writer
  def balance=(amount)
    @balance = amount
  end

  #Getter interest_rate
    def interest_rate
     @interest_rate
    end

  #Setter
    def interest_rate=(amount)
      @interest_rate = amount
    end

  # def interest_rate
  #   return @interest_rate
  # end
  #
  def deposit(amount)
    @balance += amount
  end
  #
  # def amount
  #   return @amount
  # end
  #
  # def interest_rate
  #   return @interest_rate
  # end
  #

  # Setter for withdraw
  def withdraw=(amount)
    @balance -= amount
  end


  #Getter for withdraw
    def withdraw
      return @withdraw
    end

  #Setter for gain_interest


  def gain_interest
    @balance *= @interest_rate
  end

#we do not need the reader for gain_interest because we are only calling the method with an object
  # def gain_interest
  #   return @gain_interest
  # end


end


ba = BankAccount.new # instantiate a version of the class

puts ba.balance
ba.balance = 100 #testing the setter for the balance

puts ba.balance

ba.interest_rate = 0.1 #testing the setter
puts ba.interest_rate #testing the getter

ba.withdraw = 50
puts ba.balance

puts ba.gain_interest
