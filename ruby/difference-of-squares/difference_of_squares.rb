class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sums
    sum = 0
    (1..@num).each do | n |
      sum+=n
    end
    return sum ** 2
  end
 
  def sum_of_squares
    sum = 0
    ((1..@num).map {|n| n ** 2}).each { |a| sum+=a }
    return sum
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
