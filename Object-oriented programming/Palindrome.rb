class String
	def palindrome?
	self == self.reverse
	end
end

word = String.new
word = gets.chomp
puts word.palindrome?