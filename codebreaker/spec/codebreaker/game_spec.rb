require 'spec_helper'   # from spec/spec_helper.rb

module Codebreaker
  describe Game do
    describe "#start" do
      it "sends a welcome message" do
        output = double('output').as_null_object
        game = Game.new(output)        
        output.should_receive(:puts).with('Welcome to Codebreaker!')      
        game.start
      end
      
      it "prompts for the first guess" do
        output = double('output').as_null_object
        game = Game.new(output)        
        output.should_receive(:puts).with('Enter guess:')        
        game.start
      end
      
    end
  end
end

# decribe returns a subclass of RSpec::Core::ExampleGroup (a group of examples of expected behavior of an object - similar to Test::Unit's TestCase)
# it() method creates an example that is an instance of the ExampleGroup returned by describe()