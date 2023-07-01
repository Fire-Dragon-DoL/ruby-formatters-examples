module Foo
  class User
    attribute :name, :string
    attribute :age, :integer

    attr_accessor :virtual
    attr_reader :full_name
    attr_writer :nobody_uses_it

    def mth_with_many_params(
      foo,
      bar,
      baz = 123,
      lol = nil,
      special: false,
      whatever: [1, 2, 3],
      maybe: nil,
      even_longer: "sometimes"
    )
      assignment_of_extremely_long_variable_for_whatever_crazy_reason_we_need =
        method_verbose_name_super_duper_longer_than_everything_ever + 123
      short_name =
        method_verbose_name_super_duper_longer_than_everything_ever + 123
      foo = what { |blah| something }
      foo =
        what do |blah|
          something
          more
        end
      foo = what { |blah| something }
      foo =
        what do |blah|
          something
          more
        end
      puts "string with single quotes"
    end

    def alternative_mth_manyargs(
      foo,
      bar,
      baz = 123,
      lol = nil,
      special: false,
      whatever: [1, 2, 3],
      maybe: nil,
      even_longer: "sometimes"
    )
      puts "please fix format of this messy signature!"
    end

    def ruby32 = "sure!"

    def initialize(name = "")
      @name = name
    end
  end

  module Bar
    extend self

    SOMETHING = %i[foo bar baz]
    WHATEVER = %w[foo whatever blah]

    def call(optional: false)
      puts "do this"
      variable = (optional ? "take that" : "what are you doing")

      variable2 =
        if optional == false
          "take that"
        elsif optional.nil?
          puts "something here"
          "what is this"
        else
          "what are you doing"
        end

      puts "ah! #{variable}"
    end
  end
end

module Run
  extend self

  def call
    ::Foo::Bar.()
    ::Foo::Bar.(optional: true)
    Foo::Bar.()
    Foo::Bar.(optional: true)
  end
end

Run.()
