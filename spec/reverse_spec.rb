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
    it 'reverses [0,1,2] to [2,1,0]' do
      expect(subject.reverse_two([0,1])).to eq([1,0])
    end
    it 'reverses [0..10] to [10..0]' do
      expect(subject.reverse_two((0..10).to_a)).to eq([10,9,8,7,6,5,4,3,2,1,0])
    end
  end
end