class Array
#  def my_map
#    c = 0
#    acc = []
#    until c == size
#      acc << yield(self[c])
#      c += 1
#    end
#    acc
#  end

  def my_map
    puts "I did make this call."
    acc = []
    my_each {|e| acc << yield(e)}
    acc
  end
end
