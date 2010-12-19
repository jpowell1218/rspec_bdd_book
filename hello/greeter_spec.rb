# starting on page #12
# Individual Specs take on the same Given / When / Then philosophy as Cucumber scenerios do:
# 'Given' is the describe block:    describe "RSpec Greeter" do
# 'When' happends here:             greeter = greeter.greet 
# 'Then' ocurs via:                 greeting.should == "Hello RSpec!"

class RSpecGreeter
  def greet
    "Hello RSpec!"
  end
end

describe "RSpec Greeter" do
  it "should say 'Hello RSpec!' when it receives the greet() message" do
    greeter = RSpecGreeter.new
    greeting = greeter.greet
    greeting.should == "Hello RSpec!"
  end
end