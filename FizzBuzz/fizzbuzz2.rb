threes = [ "" , "", "Fizz"].cycle
fives = [ "", "", "", "", "Buzz"].cycle
times = 1.upto(100)

times.zip(threes, fives) do |t|
  if t[1] == "" and t[2] == ""
    p t[0]
  else
    puts "#{t[1]}#{t[2]}"
  end
end