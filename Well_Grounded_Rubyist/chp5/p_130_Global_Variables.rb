$gvar = "I'm a global!"

class C
  def examine_global
    puts $gvar
  end
end

c = C.new
c.examine_global


local_var = "I'm not a global!"

class D
  def examine_global
    puts local_var
  end
end

d = D.new
d.examine_global
