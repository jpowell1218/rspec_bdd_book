# "Refactoring is the process of changing a software system in such a way that it does not alter the external behavior of the code yet improves its internal structure." - Martin Fowler : Refactoring book

# Notable:
  as_null_object        # output = double('output').as_null_object
  before(:each)         # before(:each) do; end (pg 54)
  let(:method) {}       # when code in a before block is only creating instance variables & assigning them values (most of the time) use RSpec's let() method instead. (pg 56)
  
    let() {} Example:
    
    Instead of this before(:each) block:
    
      before(:each) do
        @output = double('output').as_null_object
        @game = Game.new(@output)
      end
      
    ..use this let(:method) {} block:
      
      let(:output)  { double('output').as_null_object }
      let(:game)    { Game.new(output) }
      
      Note: The first call to let() defines a memoized output() method that returns a double object.  
      Memoized means that the first time the method is invoked, the return value is cached & that same value is returned.
      Every subsequent time the method is invoked within the same scope.

# Configure Textmate RSpec bundle:    
http://rspec.info/documentation/tools/extensions/editors/textmate.html

Textmate Shortcuts:
  des   <tab>   describe
  it    <tab>   it
  bef   <tab>   before
  aft   <tab>   after
  
  
Use Cucumber to describe the behavior of applications and use RSpec to describe the behavior of objects

Current TextMate Variables:
TM_CUCUMBER_OPTS    --format=html -r features
TM_RUBY             /Users/jpowell/.rvm/rubies/ree-1.8.7-2010.02/bin/ruby
TM_RSPEC_HOME       /Users/jpowell/.rvm/gems/ree-1.8.7-2010.02/gems/rspec-1.3.0
VOS_ONLY_ON_ERROR   true
PATH                /usr/bin:/bin:/usr/sbin:/sbin
TM_SVN_DIFF_CMD     /usr/local/bin/ksdiff-svnwrapper

# RSpec env var in Textmate (working) -- I adjusted it to use 2.0 instead
# /Users/jpowell/.rvm/gems/ree-1.8.7-2010.02/gems/rspec-1.3.0 
# /Users/jpowell/.rvm/gems/ree-1.8.7-2010.02/gems/rspec-2.0.0

Run just the rspec tests via: 

    rspec spec --color --format doc         (now aliased to rspecc)
    rspec spec --color --format specdoc
    rspec spec --backtrace

Running notes:  12.24.2010 - initial /spec setup

% rspec spec/codebreaker/game_spec.rb --format doc 

RSpec Note: follow the guideline of "one expectation per example" -ie- output.should_receive(:puts).with('Welcome to Codebreaker!')

# decribe returns a subclass of RSpec::Core::ExampleGroup (a group of examples of expected behavior of an object - similar to Test::Unit's TestCase)
# it() method creates an example that is an instance of the ExampleGroup returned by describe()

