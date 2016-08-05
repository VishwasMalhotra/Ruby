#Alternatively if we just have to create the animal sounds.
class Animal
  def self.sound
    @sound
  end

  def talk
    self.class.sound
  end
end

class Dog < Animal
  @sound = 'Woof'
end

class Cat < Animal
  @sound = 'Meow'
end

dog = Dog.new
cat = Cat.new
animal = Animal.new

puts "Dog goes #{dog.talk}."
puts "Cat goes #{cat.talk}."

