# Configure Textmate RSpec bundle:    
http://rspec.info/documentation/tools/extensions/editors/textmate.html

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

Run just the rspec tests via: rspec spec

Running notes:  12.24.2010 - initial /spec setup

(describing_code_with_rspec)⚡ % rspec spec/codebreaker/game_spec.rb --format doc 

Codebreaker::Game
  #start
    sends a welcome message (PENDING: Not Yet Implemented)
    prompts for the first guess (PENDING: Not Yet Implemented)

Pending:
  Codebreaker::Game#start sends a welcome message
    # Not Yet Implemented
    # ./spec/codebreaker/game_spec.rb:6
  Codebreaker::Game#start prompts for the first guess
    # Not Yet Implemented
    # ./spec/codebreaker/game_spec.rb:7

Finished in 0.00035 seconds
2 examples, 0 failures, 2 pending
