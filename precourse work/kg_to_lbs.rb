def conversion(kilo)
  return kilo * 2.20462
end

puts "What is your weight in kilso (kg)?"
kilo = gets.to_f
result = conversion(kilo)

puts "#{kilo} kg is #{result} lbs"