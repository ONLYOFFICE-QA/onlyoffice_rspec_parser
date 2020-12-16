# frozen_string_literal: true

module OnlyofficeRspecParser
  # Class for storing data of `it`
  class ItParsed
    def initialize(node, file)
      @node = node
      @file = file
    end

    # @return [String] it node to string
    def to_s
      "#{@file}:#{@node.loc.expression.to_s.split(':')[1]}"
    end

    # @return [True, False] check if node include `expect`
    def include_expect?
      @node.children.last.to_s.match?(/:expect\)?\n/)
    end
  end
end
