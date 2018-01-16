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

  describe "#paint_pixel" do
    xit "clears the grid, setting all pixels to 'O' " do
      bitmap.build_grid(4, 4)
      bitmap.paint_pixel(2, 2, 'C')
      expect { bitmap.create }.to output("OOOOO\nOOOOO\nOOCOO\nOOOO").to_stdout
    end
  end

end
