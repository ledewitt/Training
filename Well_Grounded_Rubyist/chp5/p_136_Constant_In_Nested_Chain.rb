module M
  class C
    class D
      module N
        X = 1
      end
    end
  end
end

puts "X in M::C::D::N - #{M::C::D::N::X}"
