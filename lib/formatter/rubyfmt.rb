module Formatter
  module Rubyfmt
    ALL << self
    extend self

    def output_path = Pathname.new("rubyfmt")
    def setup = nil
    def format
      `tmp/bin/rubyfmt/target/release/rubyfmt-main -i 'output/rubyfmt'`
    end
  end
end
