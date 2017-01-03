puts "How many items do you see?"
  input = gets.chomp.to_i

n = 0 
while n < input 
n = n + 1
  
  if n % 3 == 0 && n % 5 == 0
    puts "FooBar"
  elsif n % 3 == 0
    puts "Foo"
  elsif n % 5 == 0
    puts "Bar"
  else
    puts "#{n}"
  end
end