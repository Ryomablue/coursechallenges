def conversion (celsius)
  return (celsius * 1.8) + 32
end

puts "Enter degrees in Celsius: "
celsius = gets.to_i
results = conversion(celsius)

puts "The tempurature is #{conversion(celsius).to_i} degrees Farhenhiet"