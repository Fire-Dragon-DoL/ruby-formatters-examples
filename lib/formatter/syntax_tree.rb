module Formatter
  module SyntaxTree
    ALL << self
    extend self

    def output_path = Pathname.new("syntax_tree")
    def setup = nil
    def format
      `stree write 'output/standard/**/*'`
    end
  end
end
