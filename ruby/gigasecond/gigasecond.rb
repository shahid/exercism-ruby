class Gigasecond
  SECONDS_PER_GS = 10**9
  def self.from(t)
    t + SECONDS_PER_GS 
  end
end
