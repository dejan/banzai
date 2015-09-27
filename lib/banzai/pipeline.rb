module Banzai
  class Pipeline < Filter

    def initialize(*filters)
      @filters = filters.flatten
    end
  
    def call(input)
      @filters.inject(input) do |content, filter|
        filter.call(content)
      end
    end

  end
end
