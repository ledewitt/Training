1.upto(100) do |x|
  case x % 15
  when 0
    p "FizzBuzz"
  when 5, 10
    p "Buzz"
  when 3, 6, 9, 12
    p "Fizz"
  else
    p x
  end
end
 
# 1.upto(100) do |x|
#   if x % 15 == 0
#     p "FizzBuzz"
#   elsif x % 5 == 0
#     p "Buzz"
#   elsif x % 3 == 0
#     p "Fizz"
#   else
#     p x
#   end
# end

