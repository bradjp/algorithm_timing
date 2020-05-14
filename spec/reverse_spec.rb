require 'reverse'


describe Reverse do
  
  subject(:double) { described_class.new }

  describe 'reverse_two' do
    it 'returns an empty array' do
      expect(subject.reverse_two([])).to eq([])
    end
    it 'returns an single item array' do
      expect(subject.reverse_two([2])).to eq([2])
    end
    it 'reverses [0,1] to [1,0]' do
      expect(subject.reverse_two([0,1])).to eq([1,0])
    end
  end
end