class Prime
  def self.nth(num)
    nth = 0
    odd = 1
    if num <= 0
      raise ArgumentError
    else
      num == 1 ? (odd = 2; nth+=1) : nth+=1
      until num == nth
        tmp = 0
        odd+=2
        (1..odd).each do | n |
          tmp+=1 if (odd%n == 0)
        end
        nth+=1 if tmp == 2
      end
      return odd
    end
  end
end
