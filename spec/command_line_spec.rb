require 'command_line'

describe CommandLine do

  describe "#get_input" do
    it 'takes an input from stdin' do
      commandline = CommandLine.new
      allow(STDIN).to receive(:gets) { 'I' }
      expect(commandline.get_input).to eq 'I'
    end
  end

end
