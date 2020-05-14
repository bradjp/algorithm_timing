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
  end
end