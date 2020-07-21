require 'rspec'
require_relative 'tester'

RSpec.describe Tester do
  describe '#speak' do
    it 'returns "Hello!"' do
      expect(subject.speak).to eql('Hello!')
    end
  end

  describe 'debug' do
    context 'when the tester is happy' do
      subject { described_class.new(bugs: 1) }

      it 'is no longer happy' do
        subject.debug
        expect(subject).to_not be_happy
      end
    end
  end

  describe '#happy?' do
    context 'when bugs are more than 0' do
      subject { described_class.new(bugs: 1) }

      it 'returns true' do
        expect(subject).to be_happy
      end
    end

    context 'when bugs are equal to 0' do
      subject { described_class.new(bugs: 0) }

      it 'returns false' do
        expect(subject).to_not be_happy
      end
    end
  end
end
