class Vehicle
attr_accessor :name, :price, :dealer

	def initialize(name, price)
		@name = name
		@price = price.to_i
	end
end

class Bike < Vehicle
	def initialize(name, price, dealer)
		super(name, price)
		@dealer = dealer
	end

	def price_inc(price)
		@price = @price + (12 * @price / 100)
	end
end




bike_new = Bike.new('BajajDiscover', '58000', 'BaggaLink')


puts "Bike Name : #{bike_new.name}"
puts "Bike Price : #{bike_new.price}"
puts "Bike Dealer : #{bike_new.dealer}"


puts "After 12.0 percent hike in price: "

bike_new.price_inc(@price)

puts "Bike Name : #{bike_new.name}"
puts "Bike Price : #{bike_new.price}"
puts "Bike Dealer : #{bike_new.dealer}"
