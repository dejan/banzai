RSpec.describe Banzai::Pipeline do

  class Strip < Banzai::Filter
    def call(input)
      input.strip
    end
  end

  class Upcase < Banzai::Filter
    def call(input)
      input.upcase
    end
  end

  let(:input) { '    ohai ' }
  let(:output) { 'OHAI' }

  describe 'initialized with array of filters' do
    subject { Banzai::Pipeline.new([Strip, Upcase]) }
    describe '.call' do
      it 'filters the input' do
        expect(subject.call(input)).to eq output
      end
    end
  end

  describe 'initialized with splatted array of filters' do
    subject { Banzai::Pipeline.new(Strip, Upcase) }
    describe '.call' do
      it 'filters the input' do
        expect(subject.call(input)).to eq output
      end
    end
  end

end
