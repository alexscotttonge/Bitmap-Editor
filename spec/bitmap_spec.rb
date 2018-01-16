describe Bitmap do

  describe "#show" do
    it 'returns the expected view of the matrix' do
      bitmap =  Bitmap.new(2, 2)
      expect { bitmap.show }.to output("OO\nOO\n").to_stdout
    end
  end

end
