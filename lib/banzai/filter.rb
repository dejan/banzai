module Banzai
  class Filter
    
    attr_reader :options

    def initialize(options={})
      @options = options
    end

    # should be redefined in subclass
    def apply(input)
      raise NotImplementedError
    end
    
    def self.apply(input)
      new.apply(input)
    end

  end
end
