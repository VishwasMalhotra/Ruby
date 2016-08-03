#Input = Rahul:2000 Abhishek:3000 transfer:200
class Account

	attr_accessor :name, :balance
	
		def initialize( name,  balance)
			@name = name
			@balance = balance

		end
end


input = gets.chomp.split
i = 1
new_obj = input.first(2).map{|arg| Account.new(*arg.split(':'))}
z = input[2].split(':')[1]
withdraw = new_obj[0].balance.to_i - z.to_i
deposit = new_obj[1].balance.to_i + z.to_i

puts "Account Number : #{i} "
puts "Account holder Name :  #{new_obj[0].name}"
puts "Account Balance : #{withdraw}"

i+=1 

puts "Account Number : #{i} "
puts "Account holder Name :  #{new_obj[1].name}"
puts "Account Balance : #{deposit}"
$end