require 'matrix'

class Bitmap

  def initialize(n, m)
    @matrix = Matrix.build(m, n) { 'O' }
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
