require 'bank_account.rb'

RSpec.describe BankAccount do
  let(:account) { BankAccount.new(1000) }

  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account.deposit(1000)
      expect(account.balance).to eq(2000)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account.withdraw(500)
      expect(account.balance).to eq(500)
    end

    it "does not change the balance if insufficient funds" do
      account.withdraw(1500)
      expect(account.balance).to eq(500)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      expect(account.balance).to eq(500)
    end
  end
end

