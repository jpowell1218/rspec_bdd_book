require 'spec_helper'   # from spec/spec_helper.rb

module Codebreaker
  describe Game do                        # returns a subclass of RSpec::Core::ExampleGroup (a group of examples of expected behavior of an object - similar to Test::Unit's TestCase)
    describe "#start" do
      it "sends a welcome message"        # it() method creates an example that is an instance of the ExampleGroup returned by describe()
      it "prompts for the first guess"
    end
  end
end