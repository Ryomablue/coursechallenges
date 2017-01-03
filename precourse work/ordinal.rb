puts "Enter a number"
number = gets.chomp.to_i
val1 = number % 10
val2 = number % 100

if val2 >= 10 && val2 <= 19
   puts "#{number}th"
elsif val1 == 1
   puts "#{number}st"
elsif val1 == 2
   puts "#{number}nd"
elsif val1 == 3
   puts "#{number}rd"
else
   puts "#{number}th"
end
