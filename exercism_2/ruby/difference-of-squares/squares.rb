class Squares
  attr_reader :number
  
  def initialize(number)
    @number = number
  end
  
  def difference
    square_of_sums - sum_of_squares
  end
  
  def sum_of_squares
    (1..number).inject do |a, n|
      a + n**2
    end
  end
  
  def square_of_sums
    (1..number).inject(:+) ** 2
  end 
end
