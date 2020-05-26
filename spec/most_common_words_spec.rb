require 'most_common_words'

describe Most_common_words do
  subject(:double) { described_class.new }

  describe '#most_common_words' do
    it 'returns nil with an empty array' do
      expect(subject.most_common_words([])).to eq(nil)
    end
    it 'returns nil with a one-item array' do
      expect(subject.most_common_words(['Hello'])).to eq(nil)
    end
    it 'returns both items of a two-item array' do
      expect(subject.most_common_words(%w[Hello world])).to eq(%w[Hello world])
    end
    it 'returns the two most common items of an array' do
      expect(subject.most_common_words(%w[Hello world Hello world single])).to eq(%w[Hello world])
    end
    it 'returns the two most common items of an array' do
      expect(subject.most_common_words(%w[Hello world Hello world Howdy Howdy])).to eq(%w[Howdy world])
    end
  end
end
