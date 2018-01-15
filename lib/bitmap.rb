require 'matrix'

class Bitmap

  attr_reader :matrix

  def initialize(width, height)
    @matrix = Matrix.build(width, height) { 'O' }
  end

  def show
    @show = Show.new(matrix)
    @show.view_matrix
  end

end
