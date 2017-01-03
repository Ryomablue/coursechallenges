class Collatz

  def initialize
    @results = []
  end

  def sequence(num) 
    @results << num
    
    if num % 2 == 0
      num = num / 2 
      sequence(num)
    elsif num == 1
      return @results
    else
      num = num*3 +1
      sequence(num)
    end
  end

  def find_longest
    #number w/the longest sequence
    longest_number = 0
    #the length of the longest sequence
    longest_sequence = 0

    #for 1 - 10000000 do
    1.upto(1000000) do |n|
      sequence_length = sequence(n).length
       if sequence_length > longest_sequence
          longest_number = n
          longest_sequence = sequence_length
       end
       @results = []
    end

    return longest_number, longest_sequence
  end

end

puts Collatz.new.sequence(10).size
start = Time.now
puts Collatz.new.find_longest
finish = Time.now
puts (finish - start)