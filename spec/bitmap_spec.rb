describe Bitmap do

  IntegerValueError = Class.new(StandardError)

  describe "#build_grid" do
    it 'raises an error if N or M dimension is higher than 250' do
      bitmap = Bitmap.new
      expect { bitmap.build_grid(251, 251) }.to raise_error(IntegerValueError)
    end

    it "raises an error for negative values" do
      bitmap = Bitmap.new
      expect { bitmap.build_grid(-1, -3) }.to raise_error(IntegerValueError)
    end
  end

  describe "#create" do
    it 'starts with a grid of M x N' do
      bitmap = Bitmap.new
      bitmap.build_grid(2, 2)
      expect { bitmap.create }.to output("OO\nOO\n").to_stdout
    end
  end

end
