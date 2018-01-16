class Show

  def initialize(matrix)
    @matrix = matrix
  end

  def view_matrix
    str = ""
    @matrix.to_a.each do |row|
      str += row.join("")
      str += "\n"
    end
    puts str
  end


end
