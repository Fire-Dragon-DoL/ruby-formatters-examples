module Formatter
  module Prettier
    extend self

    def output_path = Pathname.new("output/prettier")
    def setup = nil
    def format = nil
  end
end
