require 'shuffle'

describe Shuffle do

  subject(:double) { described_class.new }

  describe '#shuffle_two' do
    it 'returns an empty array' do
      expect(subject.shuffle_two([])).to eq([])
    end
  end
  
end
