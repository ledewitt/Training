print "Exit the program? (yes or no): "
answer = gets.chomp
case answer
when "yes", "y"
  puts "Good-bye"
  exit
when "no"
  puts "Ok, we'll continue"
else
  puts "That's an unknown answer -- assuming you meant 'no'"
end
puts "Continuing with programm.."
