class C
  puts "Just started class C:"
  puts self
  module M
    puts "Masted module C::M:"
    puts self
  end
  puts "Back in the outer level of C:"
  puts self
end
