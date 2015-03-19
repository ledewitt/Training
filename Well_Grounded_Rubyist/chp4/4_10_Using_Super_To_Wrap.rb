 class Bicycle
   attr_reader :gears, :wheels, :seats

   def initialize(gears = 1)
     @wheels = 2
     @seats  = 3
     @gears  = gears
   end
 end

 class Tandum < Bicycle
   def initialize(gears)
     super
     @seats = 2
   end
 end

 b = Tandum.new(3)
 puts b.gears
 puts b.wheels
 puts b.seats
