class Bitmap

  attr_reader :matrix

  def build_grid(n, m)
    if n.between?(1, 250) && m.between?(1, 250)
      @matrix = Array.new(m) { Array.new(n, 'O') }
    else raise IntegerValueError, 'Number must be between 1-250'
    end
  end

  def create
    str = ""
    matrix.each do |row|
      str += row.join("")
      str += "\n"
    end
    puts str
  end

  def paint_pixel(x, y, colour)
    matrix[x][y] = colour
  end

  def clear
    matrix.each { |row| row.map! { 'O' } }
  end

  def draw_vertical(column, row_start, row_finish, colour)
    (row_start..row_finish).each do |i|
      matrix[i - 1][column - 1] = colour
    end
  end

end
