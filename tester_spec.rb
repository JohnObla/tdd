require 'rspec'
require_relative 'tester'

describe Tester do
  describe '#speak' do
    it 'returns "Hello!"' do
      tester = Tester.new
      expect(subject.speak).to eql('Hello!')
    end
  end

  describe '#bugs_found?' do
    it 'returns true if bugs are more than 0' do
      tester = Tester.new(bugs: 7)
      expect(tester.bugs_found?).to eql(true)
    end

    it 'returns false if bugs are equal to 0' do
      tester = Tester.new(bugs: 0)
      expect(tester.bugs_found?).to eql(false)
    end
  end
end