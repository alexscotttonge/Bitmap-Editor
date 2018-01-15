describe Bitmap do

  describe "#initialize" do
    it 'returns the appropriate measurements' do
      bitmap =  Bitmap.new(2, 2)
      expect(bitmap.matrix[0, 0]).to eq 'O'
      expect(bitmap.matrix[0, 1]).to eq 'O'
      expect(bitmap.matrix[1, 0]).to eq 'O'
      expect(bitmap.matrix[1, 1]).to eq 'O'
    end

  end

end
