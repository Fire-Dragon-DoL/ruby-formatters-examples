module Formatter
  module Rubocop
    ALL << self
    extend self

    def output_path = Pathname.new("rubocop")
    def setup = nil
    def format
      `rubocop --fix-layout --only Layout 'output/rubocop/**/*'`
    end
  end
end
