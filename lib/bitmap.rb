class Bitmap

  def build_grid(n, m)
    if n.between?(1, 250) && m.between?(1, 250)
      @matrix = Array.new(m){ Array.new(n, 'O') }
    else raise IntegerValueError, 'Number must be between 1-250'
    end
  end

  def create
    str = ""
    @matrix.to_a.each do |row|
      str += row.join("")
      str += "\n"
    end
    puts str
  end

end
