module OlapXmla
  class ExecutionError < StandardError
    def initialize response
      @response = response
    end

    def to_s
      "
        Error: #{@response[:error]}
        Cube: #{@response[:client].data_source}\\#{@response[:client].catalog}
        MDX: #{@response[:mdx]}"
    end
  end
end
