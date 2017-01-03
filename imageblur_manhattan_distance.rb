class Image

  def initialize (image)
    @image = image
  end

  def output_image
    @image.each do |row|
      puts row.join
    end
  end

  def find_ones
    ones_positions = []
    @image.each_with_index do |row, row_index|
      row.each_with_index do |cell, col_index|
        if cell == 1
          ones_positions << [row_index, col_index]
        end
      end
    end
    ones_positions
  end

  def blur(n)
    ones = find_ones

    @image.each_with_index do |row, row_index|
      row.each_with_index do |cell, col_index|
        ones.each do |found_row_index, found_col_index|
          if manhattan_distance(col_index, row_index, found_col_index, found_row_index) <= n
            @image[row_index][col_index] = 1
          end
        end
      end
    end
  end

  def manhattan_distance (x1, y1, x2, y2)
    horizontal_distance = (x2 - x1).abs
    vertical_distance = (y2 - y1).abs
    # (x2 - x1).abs + (y2 - y1).abs
    horizontal_distance + vertical_distance
  end
end

image = Image.new([
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 0, 1, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 1],
[0, 0, 0, 0, 0, 0]
])

# original image
image.output_image
puts

# blurred image
image.blur(2)
image.output_image