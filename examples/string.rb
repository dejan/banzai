require 'banzai'

# Strips whitespaces from the input String
class StripFilter < Banzai::Filter
  def call(input)
    input.strip
  end
end

# Upcases the input String
class UpcaseFilter < Banzai::Filter
  def call(input)
    input.upcase
  end
end

pipeline = Banzai::Pipeline.new(StripFilter, UpcaseFilter)
puts pipeline.call('    ohai ') # prints "OHAI"
