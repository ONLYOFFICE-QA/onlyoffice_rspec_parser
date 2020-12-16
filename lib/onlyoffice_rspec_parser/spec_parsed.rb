# frozen_string_literal: true

require 'parser/current'
require 'onlyoffice_file_helper'
require_relative 'spec_parsed/it_parsed'
module OnlyofficeRspecParser
  # Class for storing data of parsed spec
  class SpecParsed
    attr_reader :file

    def initialize(path)
      @file = path
      @parsed_data = Parser::CurrentRuby.parse(File.read(file))
    end

    # @return [Array<ItParsed>] list of it nodes in spec
    def it_nodes
      @it_nodes ||= search_node_for_it(@parsed_data)
    end

    # Search node for it
    # @param [Parser::AST:Node] node for find
    # @return [Array<Object>] nodes
    def search_node_for_it(node)
      nodes = []
      node.children.each do |child|
        next unless child.is_a?(Parser::AST::Node)

        if child.to_s.start_with?("(send nil :it\n")
          nodes << ItParsed.new(node, file)
        else
          nodes += search_node_for_it(child)
        end
      end
      nodes
    end

    # @return [Nothing] find specs without expect
    def self.find_spec_without_expect(folder)
      files = OnlyofficeFileHelper::FileHelper.list_file_in_directory(folder)
      files.each do |file|
        next unless file.end_with?('_spec.rb')

        parsed_spec = SpecParsed.new(file)
        parsed_spec.it_nodes.each do |current_it|
          next if current_it.include_expect?

          OnlyofficeLoggerHelper.log("There is no expect in #{current_it}")
        end
      end
    end
  end
end
