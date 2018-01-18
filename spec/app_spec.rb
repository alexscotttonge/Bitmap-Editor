require 'spec_helper'

describe App do

  subject(:app) { described_class.new }

  describe '#run' do
    it 'should be able to read a filename' do
      file = double('example.txt')
      expect(File).to receive(:open).with(file)
      app.run(file)
    end
  end

end
