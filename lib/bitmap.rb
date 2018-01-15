require 'matrix'

class Bitmap

  attr_reader :matrix

  def initialize(width, height)
    @matrix = Matrix.build(width, height) { 'O' }
  end

  def view_matrix
    str = ""
    matrix.to_a.each do |row|
      str += row.join("")
      str += "\n"
    end
    str
  end

end
