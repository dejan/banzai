require 'test_helper'

class LeetFilter < Banzai::Filter
  def call(input)
    input.gsub(/elite/, '1337')
  end
end

describe Banzai::Filter do
  describe 'subclass' do
    it 'can be created with some options' do
      filter = LeetFilter.new(:mode => 'hardcore')
      assert 'hardcore', filter.options[:mode]
    end

    it 'applies to some input' do
      assert_equal '1337 security', LeetFilter.call('elite security')
      assert_equal '1337 security', LeetFilter.new.call('elite security')
    end
  end
end
