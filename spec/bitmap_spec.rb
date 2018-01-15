describe Bitmap do

  describe "#view_matrix" do
    it 'returns the expected view of the matrix' do
      bitmap =  Bitmap.new(2, 2)
      expect(bitmap.view_matrix).to eq "OO\nOO\n"
    end
  end

end
