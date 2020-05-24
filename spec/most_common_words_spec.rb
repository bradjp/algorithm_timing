require 'most_common_words'

describe Most_common_words do

  subject(:double) { described_class.new }

  describe '#most_common_words' do
    it 'returns nil with an empty array' do
      expect(subject.most_common_words([])).to eq(nil)
    end
  end

end