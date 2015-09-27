module Banzai
  class Filter

    attr_reader :options

    def initialize(options={})
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
