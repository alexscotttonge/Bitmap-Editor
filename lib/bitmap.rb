require 'matrix'

class Bitmap

  attr_reader :matrix

  def initialize(width, height)
    @matrix = Matrix.build(width, height) { 'O' }
  end

end
