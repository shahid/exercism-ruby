class Complement
  def self.of_dna(value)
    dna_value=""
    value.length.times do | index |
      case value[index]
      when "C","G"
        dna_value+=Complement.common(value[index])
      when "T"
        dna_value+="A"
      when "A"
        dna_value+="U"
      when "U"
        raise ArgumentError
      else 
        dna_value+=value[index]
      end
    end
    return dna_value
  end

  def self.of_rna(value)
    rna_value=""
    value.length.times do | index |
      case value[index]
      when "C","G"
        rna_value+=Complement.common(value[index])
      when "A"
        rna_value+="T"
      when "U"
        rna_value+="A"
      when "T"
        raise ArgumentError
      else
        rna_value+=value[index]
      end
    end
    return rna_value 
  end
  
# private
  def self.common(v)
    v == "C" ? "G" : "C"
  end
end
