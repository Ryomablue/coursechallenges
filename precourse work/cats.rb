def likes_cats? (answer)

  if answer == "yes"
    puts "Ken does too"  
  elsif
    puts "Dogs are better!"
  else
    puts "It's hard to decide."
    
  end
end

puts "do you like cats?"
answer = gets.chomp.downcase
puts likes_cats? (answer)