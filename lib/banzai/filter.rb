module Banzai
  # Filter transforms an input into desired output. The process of
  # transformation should be implemented in the {#call} method.
  class Filter
    attr_reader :options

    # @param options [Hash] filter parameters that method {#call} can utilize
    #   to make processing customizable
    def initialize(options = {})
      @options = options
    end

    # Subclass should redefine this method to transform input to desired output
    #
    # @param input [Object] the type of the input is not defined since it will
    #   depend on the (re)implementation of the method
    def call(input)
      input
    end

    # Delegates to {#call} by creating an instance with default options
    #
    # @param input [Object]
    def self.call(input)
      new.call(input)
    end
  end
end
