require 'prime'

class Raindrops
  def self.convert(num)
    foo = ""
    if num == 1 
      return "1"
    else
      num.prime_division.flatten.each do | n |
        case n
        when 3
          foo += "Pling"
        when 5
          foo += "Plang"
        when 7
          foo += "Plong"
        end
      end
      foo.empty? ? "#{num}" : "#{foo}"
    end
  end
end
