RSpec.describe Banzai::Filter, 'subclass' do

  class Yell < Banzai::Filter
    def call(input)
      input.to_s.upcase + "!" * exclamation_mark_count
    end

    def exclamation_mark_count
      options[:exclamation_mark_count] || 1
    end
  end

  subject { Yell }
  let(:input) { 'chunky bacon' }

  describe '.call' do
    it 'filters the input' do
      expect(subject.call(input)).to eq 'CHUNKY BACON!'
    end
  end

  describe '#call' do
    it 'filters the input using options' do
      expect(subject.new(exclamation_mark_count: 3).call(input)).to eq 'CHUNKY BACON!!!'
    end
  end

end
