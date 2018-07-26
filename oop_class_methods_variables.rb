
# arrays and iteration
# if/else statements
# defining classes and instantiating objects
# defining and calling instance methods
# using instance variables

# class variables
# class methods

class BankAccount

  @@interest_rate = 0.05
  @@accounts = [] # --> an empty array that will store list of all accounts in the bank

  def initialize
    @balance=0

  end

  # def balance=(balance) -> we do not need this bc the outside world should not be able to set their own balance
  #   @balance = balance
  # end

  def balance
    return @balance
  end

  def deposit(amount) #--> referring to a specific account, so intance variable
    @balance+=amount
  end

  def withdraw(amount)
    @balance-=amount
  end

  def self.create
    new_account = BankAccount.new
    @@accounts << new_account # -> start with the thing that you're changing
    return new_account
  end

  def self.total_funds
      sum = 0
      @@accounts.each do |account|
        sum += account.balance
      end
      return sum
  end

  def self.interest_time
      @@accounts.each do |account|
        new_money = @@interest_rate * account.balance
        account.deposit(new_money)
      end
  end

  def self.accounts
    return @@accounts
  end

end

# print out amount of money
# want to deposit some money in account
bank_account = BankAccount.create
bank_account2 = BankAccount.create
bank_account3 = BankAccount.create

puts bank_account.deposit(100)
puts bank_account.withdraw(20)

puts bank_account2.deposit(150)
puts bank_account2.withdraw(27)
puts bank_account3.deposit(200)
puts bank_account3.withdraw(76)

#
# puts BankAccount.create
# puts BankAccount.interest_time
#
# puts bank_account.balance
puts BankAccount.total_funds

puts bank_account.balance
# puts BankAccount.total_funds
#
# puts BankAccount.interest_time

p BankAccount.accounts.class
