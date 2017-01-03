module Luhn
  def self.is_valid?(number)
  #Reverse and split cc number
  #double 2nd digits
    doubles = []
    digits = number.to_s.split('').map(&:to_i)
    digits.reverse.each_with_index do |n, index|
      if (index+1) % 2 == 0
        #puts "YES double, digit: #{n}"# index: #{index} "
        doubles << n*2
      else 
        #puts "NO double, digit: #{n}"# index: #{index} "
        doubles << n
      end
    end
  #if 2nd digit >=10 subtract 9
    puts "doubles before map, #{doubles}"
    doubles.map! do |i|
      if i >= 10
        i -= 9
      #else 
        #i  
      end
      i
    end
    puts "doubles after map, #{doubles}"
  #sum all digits
    sum = doubles.inject(:+)
  #sum % 10 = 0 means valid =/=0 means not valid
    return sum % 10 == 0
  end
end