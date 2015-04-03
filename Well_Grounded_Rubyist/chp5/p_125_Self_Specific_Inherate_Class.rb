class C
  def self.x
    puts "Class method of class C"
    puts "self: #{self}"
  end
end

puts "C.x call:"
C.x

puts "Next D < C and call D.x:"
class D < C
end
D.x
