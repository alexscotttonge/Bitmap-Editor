describe Bitmap do

  describe "#create" do
    it 'starts with a grid of M x N' do
      bitmap = Bitmap.new(2,2)
      expect { bitmap.create }.to output("OO\nOO\n").to_stdout
    end
  end

end
