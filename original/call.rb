module Foo
  module Bar
    SOMETHING = [:foo, :bar, :baz]
    WHATEVER = ["foo", "whatever", "blah"]
    extend self

    def call(optional: false)
      puts "do this"
      variable = if optional
        "take that"
      else
        "what are you doing"
      end

      puts "ah! #{variable}"
    end
  end
end

::Foo::Bar.()
::Foo::Bar.(optional: true)
