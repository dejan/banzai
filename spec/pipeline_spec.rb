describe Banzai::Pipeline do

  class StripFilter < Banzai::Filter
    def call(input)
      input.strip
    end
  end

  class UpcaseFilter < Banzai::Filter
    def call(input)
      input.upcase
    end
  end

  it 'applies provided filters to input' do
    pipeline = Banzai::Pipeline.new(StripFilter, UpcaseFilter)
    expect(pipeline.call('    ohai ')).to eq 'OHAI'
  end

  it 'accepts array of filters' do
    pipeline = Banzai::Pipeline.new([StripFilter, UpcaseFilter])
    expect(pipeline.call('    ohai ')).to eq 'OHAI'
  end

end
