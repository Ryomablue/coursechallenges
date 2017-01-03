class Image
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def blur
    # Empty array to hold x, y coords with values of "1"
    to_be_changed = Array.new
    # Loop through array to find x, y coords with values of "1"
    @data.each_index do |y|
      subarray = @data[y]
      subarray.each_index do |x|
        if subarray[x] == 1
          to_be_changed.push([x, y])
        end
      end
    end
    # Change surrounding 0's to 1's for each x, y coord
    to_be_changed.each do |coords|
      x = coords[0]
      y = coords[1]
      @data[y][x-1] = 1 unless x-1 < 0
      @data[y][x+1] = 1 unless x+1 >= @data[y].length
      @data[y-1][x] = 1 unless y-1 < 0
      @data[y+1][x] = 1 unless y+1 >= @data.length
    end
    return Image.new(@data)
  end  
end