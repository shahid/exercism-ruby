class Fixnum
  NUMBER_MAPPING = {
    1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C",  
      90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX",  
        5 => "V", 4 => "IV", 1 => "I"
  }
  
  def to_roman
    arabic_numeral = self

    fail RangeError "Romans didn't use negative numbers #{self}" if self < 0    

    NUMBER_MAPPING.inject('') do | acc, (num, roman)|
      factor, arabic_numeral = arabic_numeral.divmod(num)
      acc << roman * factor 
    end
  end
end
