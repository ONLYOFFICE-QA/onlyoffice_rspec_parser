module OnlyofficeRspecParser
  # Class for storing data of `it`
  class ItParsed
    def initialize(node)
      @node = node
    end

    # @return [True, False] check if node include `expect`
    def include_expect?
      @node.children.last.to_s.include?(":expect\n")
    end
  end
end
