require 'shuffle'

describe Shuffle do

  subject(:double) { described_class.new }

  describe '#shuffle_two' do
    it 'returns an empty array' do
      expect(subject.shuffle_two([])).to eq([])
    end
    it 'shuffles an array' do
      pre_shuffle = ['a', 'b', 'c', 'd', 'e']
      post_shuffle = subject.shuffle_two(['a', 'b', 'c', 'd', 'e'])
      expect(subject.shuffle_two(['a','b','c','d', 'e'])).not_to eq([pre_shuffle])
      expect(pre_shuffle - post_shuffle).to eq([])
    end
  end

  describe '#shuffle_three' do
    it 'returns an empty array' do
      expect(subject.shuffle_three([])).to eq([])
    end
    it 'shuffles an array' do
      pre_shuffle = ['a', 'b', 'c', 'd', 'e']
      post_shuffle = subject.shuffle_three(['a', 'b', 'c', 'd', 'e'])
      expect(subject.shuffle_three(['a','b','c','d', 'e'])).not_to eq([pre_shuffle])
      expect(pre_shuffle - post_shuffle).to eq([])
    end
  end
  
end
