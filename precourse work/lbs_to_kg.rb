def lbs_to_kg(pounds)
  return pounds * 0.453592
end

puts "What's your weight in pounds (lbs)?"
pounds = gets.to_f
result = lbs_to_kg(pounds)

puts "#{pounds} lbs is equal to #{result} kg"

