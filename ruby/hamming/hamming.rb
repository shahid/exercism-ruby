class Hamming
    VERSION = 1
    def self.compute(a, b)
        unless  a.length == b.length
            raise ArgumentError
        end

       count = 0
       a.length.times do |index|
          count += 1 unless a[index] == b[index]
      end
      return count
    end
end
