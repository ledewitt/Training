class Person
  def initialize(name)
    @name = name
  end

  def inspect
    @name
  end
end

david = Person.new("David")
puts david.inspect

class Animal
  def initialize(name)
    @name = name
  end
end

fido = Animal.new("Fido")
puts fido.inspect
