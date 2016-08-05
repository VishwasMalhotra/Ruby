class Animal
attr_accessor :name, :talk

	def initialize(name, talk)
		@name = name
		@talk = talk
	end
end

class Dog < Animal
	def initialize(name, talk)
		super(name, talk)
	end
end

class Cat < Animal
	def initialize(name, talk)
		super(name, talk)
	end
end

animal = Animal.new('Animal','Animal Sound')
dog = Dog.new('Tuffy', 'Woof')
cat = Cat.new('Misty', 'Meow')

puts "An animal makes #{animal.talk}."
puts "My dog #{dog.name} goes #{dog.talk}."
puts "My cat #{cat.name} goes #{cat.talk}."


