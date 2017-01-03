def unique(array)
  new_array = []
  array.each do |n|
    if ! new_array.include?(n)
      new_array.push(n)
    end
  end
  return new_array
end

array = [1,1,2,3,4,5,6,6,6,7,8,9,9]


puts "#{unique(array)}"