require 'spec_helper'

describe App do

  subject(:app) { described_class.new }

  describe '#execute' do
    let(:m) { 2 }
    let(:n) { 2 }
    it 'creates an M x N grid' do
      expect { app.execute('I', m, n) }.to output("OO\nOO\n").to_stdout
    end
  end

end
