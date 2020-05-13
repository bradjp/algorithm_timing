require 'timer'


describe Timer do
  
  subject(:double) { described_class.new }

  describe 'reverse_two' do
    it 'returns an empty array' do
      expect(subject.reverse_two([])).to eq([])
    end
  end
end