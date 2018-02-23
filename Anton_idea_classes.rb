class Wallet
  def initialize(wallet_name)
    @wallet_name = wallet_name
    @balance = 0
  end

  def add(amount)
    @balance = @balance + amount.to_i
  end

  def spend(amount_1,transaction)
    @balance = @balance - amount_1.to_i
    transaction.trans_balance(amount_1)
  end
end

class Transaction
  def initialize(transaction_name)
    @transaction_name = transaction_name
    @balance = 0
  end

  def trans_balance(amount_2)
    @balance = @balance + amount_2.to_i
  end

end

def new_transaction
  puts "Please enter transaction name:"
  name = gets.chomp
  transaction_1 = Transaction.new(name)
  return transaction_1
end

def new_wallet
  puts "Please enter the Wallet name"
  user_input = gets.chomp
  wallet_1 = Wallet.new(user_input)

  puts "Please top-up the balance:"
  user_input_1 = gets.chomp

  puts "Please enter a spand:"
  user_input_2 = gets.chomp

  transaction_2 = new_transaction

  wallet_1.add(user_input_1)
  wallet_1.spend(user_input_2, transaction_2)
end

new_wallet
