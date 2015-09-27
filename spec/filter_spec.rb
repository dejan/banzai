describe Banzai::Filter, 'subclass' do

  class LeetFilter < Banzai::Filter
    def call(input)
      input.gsub(/elite/, '1337')
    end
  end

  context 'instance' do
    it 'is created with options' do
      filter = LeetFilter.new(:mode => 'hardcore')
      expect(filter.options[:mode]).to eq 'hardcore'
    end

    it 'applies to input' do
      expect(LeetFilter.new.call('elite security')).to eq '1337 security'
    end
  end

  context 'class' do
    it 'applies to input' do
      expect(LeetFilter.call('elite security')).to eq '1337 security'
    end
  end

end
