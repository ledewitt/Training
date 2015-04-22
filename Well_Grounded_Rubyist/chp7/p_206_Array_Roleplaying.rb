class Human
  attr_accessor :name, :age, :email
  def to_ary
    [name, age, email]
  end
end
