describe Bitmap do

  IntegerValueError = Class.new(StandardError)

  subject(:bitmap) { Bitmap.new }

  describe "#build_grid" do
    it 'raises an error if N or M dimension is higher than 250' do
      expect { bitmap.build_grid(251, 251) }.to raise_error(IntegerValueError)
    end

    it "raises an error for negative values" do
      expect { bitmap.build_grid(-1, -3) }.to raise_error(IntegerValueError)
    end
  end

  describe "#create" do
    it 'starts with a grid of M x N' do
      bitmap.build_grid(2, 2)
      expect { bitmap.create }.to output("OO\nOO\n").to_stdout
    end
  end

end
