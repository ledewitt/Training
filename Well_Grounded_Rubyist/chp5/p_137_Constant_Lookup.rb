module M
  class C
    class D
      module N
        X = 1
      end
    end
    puts "X in D::N from inside class C in module M is - #{D::N::X}"
  end
end
