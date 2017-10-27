require 'parser/current'
require_relative 'spec_parsed/it_parsed'
module OnlyofficeRspecParser
  # Class for storing data of parsed spec
  class SpecParsed
    attr_reader :path

    def initialize(path)
      @path = path
      @parsed_data = Parser::CurrentRuby.parse(File.read(path))
    end

    # @return [Array<ItParsed>] list of it nodes in spec
    def it_nodes
      @it_nodes ||= search_node_for_it(@parsed_data)
    end

    def search_node_for_it(node)
      nodes = []
      node.children.each do |child|
        next unless child.is_a?(Parser::AST::Node)
        if child.to_s.start_with?("(send nil :it\n")
          nodes << ItParsed.new(node)
        else
          nodes += search_node_for_it(child)
        end
      end
      nodes
    end
  end
end
