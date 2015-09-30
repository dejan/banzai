module Banzai
  # Filter transforms an input into desired output. The process of
  # transformation should be implemented in the `#call` method.
  class Filter
    attr_reader :options

    def initialize(options = {})
      @options = options
    end

    # Subclass should redefine this method
    def call(input)
      input
    end

    def self.call(input)
      new.call(input)
    end
  end
end
