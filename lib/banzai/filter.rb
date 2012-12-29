module Banzai
  class Filter
    
    attr_reader :options

    def initialize(options={})
      @options = options
    end

    # should be redefined in subclass
    def call(input)
      raise NotImplementedError
    end
    
    def self.call(input)
      new.call(input)
    end

  end
end
