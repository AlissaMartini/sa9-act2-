class BankAccount
  attr_reader :balance
  
  def initialize(balance = 0)
    @balance = balance
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
    end
  end
end
  