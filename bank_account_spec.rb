require 'bank_account.rb'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account = BankAccount.new(1000)
      account.deposit(500)
      expect(account.balance).to eq(1500)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account = BankAccount.new(1000)
      account.withdraw(850)
      expect(account.balance).to eq(150)
    end

    it "does not change the balance if insufficient funds" do
      account = BankAccount.new(150)
      account.withdraw(200)
      expect(account.balance).to eq(150)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account = BankAccount.new(100)
      expect(account.balance).to eq(100)
    end
  end
end