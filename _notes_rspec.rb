# Configure Textmate RSpec bundle:    
http://rspec.info/documentation/tools/extensions/editors/textmate.html

Use Cucumber to describe the behavior of applications and use RSpec to describe the behavior of objects

sCurrent TextMate Variables:
TM_CUCUMBER_OPTS    --format=html -r features
TM_RUBY             /Users/jpowell/.rvm/rubies/ree-1.8.7-2010.02/bin/ruby
TM_RSPEC_HOME       /Users/jpowell/.rvm/gems/ree-1.8.7-2010.02/gems/rspec-1.3.0
VOS_ONLY_ON_ERROR   true
PATH                /usr/bin:/bin:/usr/sbin:/sbin
TM_SVN_DIFF_CMD     /usr/local/bin/ksdiff-svnwrapper

# RSpec env var in Textmate (working) -- I adjusted it to use 2.0 instead
# /Users/jpowell/.rvm/gems/ree-1.8.7-2010.02/gems/rspec-1.3.0 
# /Users/jpowell/.rvm/gems/ree-1.8.7-2010.02/gems/rspec-2.0.0

Run just the rspec tests via: rspec spec --color --format doc (now aliased to rspecc)

Running notes:  12.24.2010 - initial /spec setup

% rspec spec/codebreaker/game_spec.rb --format doc 

RSpec Note: follow the guideline of "one expectation per example" -ie- output.should_receive(:puts).with('Welcome to Codebreaker!')      
