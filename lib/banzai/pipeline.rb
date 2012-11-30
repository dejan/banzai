module Banzai
  class Pipeline < Filter

    def initialize(filters=[])
      @filters = filters
    end
  
    def apply(input)
      @filters.inject(input) do |content, filter|
        filter.apply(content)
      end
    end

  end
end
