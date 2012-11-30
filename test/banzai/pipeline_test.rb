require 'test_helper'

class StripFilter < Banzai::Filter
  def apply(input)
    input.strip
  end
end

class UpcaseFilter < Banzai::Filter
  def apply(input)
    input.upcase
  end
end

describe Banzai::Pipeline do
  it 'applies to input' do
    pipeline = Banzai::Pipeline.new [StripFilter, UpcaseFilter]
    assert_equal 'OHAI', pipeline.apply('    ohai ')
  end
end
