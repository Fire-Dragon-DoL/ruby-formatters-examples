module Formatter
  module Prettier
    ALL << self
    extend self

    def output_path = Pathname.new("prettier")
    def setup = nil
    def format
      `rbprettier --tab-width 2 'output/prettier/**/*'`
    end
  end
end
