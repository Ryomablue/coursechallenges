fruits = ["Apples", "Oranges", "Strawberries", "Mangos"]

fruits.each do |fruit|
  upcase_fruits = fruit.upcase
  puts upcase_fruits
end

first_item = fruits[0]
second_item = fruits[1]
third_item = fruits[2]
fourth_item = fruits[3]

puts "Om nom nom #{first_item}"
puts "Om nom nom #{second_item}"
puts "Om nom nom #{third_item}"
puts "Om nom nom #{fourth_item}"
