module Formatter
  module Standard
    ALL << self
    extend self

    def output_path = Pathname.new("standard")
    def setup = nil
    def format
      `standardrb 'output/standard/**/*'`
    end
  end
end
