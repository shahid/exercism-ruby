class Robot 
  def initialize
    @n = (0...2).map { (65 + rand(26)).chr }.join + rand(100...999).to_s
  end  
  def name
    @n
  end
  def reset
    @n = (0...2).map { (65 + rand(26)).chr }.join + rand(100...999).to_s
  end
end
