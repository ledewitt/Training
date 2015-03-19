module MeFirst
  def report
    puts "Hello from the module!"
  end
end

class Person
  # prepend MeFirst
  include MeFirst
  def report
    puts "Hello from the class!"
  end
end

p = Person.new
p.report
