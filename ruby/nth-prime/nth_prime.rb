class Prime
  def self.nth(num)
    nth = 1
    odd_num = 1
    raise ArgumentError if num <= 0
    return 2 if num == 1
#    num == 1 ? (return 2) : nth += 1
    until num == nth
      factors_count = 0
      odd_num += 2
      (1..odd_num).each do | n |
        factors_count+=1 if (odd_num % n == 0)
      end
      nth += 1 if factors_count == 2
    end
    odd_num
  end
end
