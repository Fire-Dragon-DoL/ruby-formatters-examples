module Formatter
  module RubocopFull
    ALL << self
    extend self

    def output_path = Pathname.new("rubocop_full")
    def setup = nil
    def format
      `rubocop --autocorrect 'output/rubocop_full/**/*'`
    end
  end
end
