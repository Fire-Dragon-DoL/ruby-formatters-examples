module Formatter
  module Rubocop
    extend self

    def output_path = Pathname.new("output/rubocop")
    def setup = nil
    def format = nil
  end
end
