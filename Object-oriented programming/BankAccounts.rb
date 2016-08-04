
class Account

	attr_accessor :name, :balance, :transfer
		
		def initialize(name,balance)
			@name = name
			@balance = balance.to_i
		end
		def credit (amount)
		@balance = @balance + amount
		end
		def debit(amount)
		@balance = @balance - amount
		end


		def transfer(account_2, amount)
		self.debit(amount)
		account_2.credit(amount)
		end
end


account_1 = Account.new("Abhishek",500)
account_2 = Account.new("Rahul",1000)

puts "First account is of #{account_1.name} with a balance of #{account_1.balance}"
puts "Second account is of #{account_2.name} with a balance of #{account_2.balance}"
puts "Please enter the amount you would like to transfer from #{account_1.name} to #{account_2.name}"
transfer_amount = gets.chomp.to_i

puts "Rs.#{transfer_amount} transferring: In Process"
account_1.transfer(account_2, transfer_amount)



if(account_1.balance <= 0)
puts "Enter a lesser amount"
puts "Try again"
else 
puts "After the transfer:"
puts "#{account_1.name}'s balance is #{account_1.balance}"
puts "#{account_2.name}'s balance is #{account_2.balance}"
end





