module Formatter
  module Rufo
    ALL << self
    extend self

    def output_path = Pathname.new("rufo")
    def setup = nil
    def format
      `rufo 'output/rufo'`
    end
  end
end
