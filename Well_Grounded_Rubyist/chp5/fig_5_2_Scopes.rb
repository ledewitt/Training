a = 0

def t
  puts "Top level method t. Self #{self}"
end

class C
  a = 1
  def self.x
    a = 2
    puts "C.x; a = #{a}. Self #{self}"
  end

  def m
    a = 3
    puts "C#m; a = #{a}. Self #{self}."
  end

  def n
    a = 4
    puts "C#n; a = #{a}. Self #{self}"
  end

  puts "Class scope: a = #{a}. Self #{self}"
end

C.x

c = C.new
c.m
c.n

puts "Tope level: a = #{a}. Self #{self}"
