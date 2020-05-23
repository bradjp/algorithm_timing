require 'find_duplicates'

describe Find_duplicates do

  subject(:double) { described_class.new }

  describe '#find_duplicates' do
    it "returns 'No duplicates' when input is empty" do
      expect(subject.find_duplicates([])).to eq('No duplicates')
    end
    it "returns 'No duplicates' when input contains no repeated words" do
      expect(subject.find_duplicates(['hello', 'world'])).to eq('No duplicates')
    end
  end

end