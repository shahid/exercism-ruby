class Grains
  def self.square(num)
    return 2 ** (num-1)
  end

  def self.total
    return 2 ** 64 - 1
  end
end