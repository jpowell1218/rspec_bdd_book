** CUCUMBER NOTES **

* Shortcuts * (in editalias)

"cuke" && "cucu" are automatically translated into: "cucumber"

Run all of the cucumber tests via: 

  cucumber

Run a single cucumber feature:

  cucumber features/codebreaker_submits_guess.feature
  
** Write the code in your tests that you wish you had

Given steps represent the stage of the world before an event.
When steps represeqnt the event.
Then steps represent the expected outcomes
And and But steps take on the quality of the previous step.  
The And step is a second Then (a second expected outcome)


├── bin
│   └── codebreaker
├── doc
├── features
│   ├── codebreaker_starts_game.feature
│   ├── codebreaker_submits_guess.feature
│   ├── step_definitions
│   │   └── codebreaker_steps.rb
│   └── support
│       └── env.rb                <-- Cuke loads features/support/env.rb & requires -->  lib/codebreaker.rb  requires -->  lib/codebreaker/game.rb
├── lib
│   ├── codebreaker
│   │   └── game.rb
│   └── codebreaker.rb
└── spec    
    ├── codebreaker
    │   └── game_spec.rb          <-- RSpec loads spec/codebreaker/game_spec.rb  & requires -->  spec/spec_helper.rb  & requires --> lib/codebreaker.rb  requires -->  lib/codebreaker/game.rb
    └── spec_helper.rb

% rspec spec/codebreaker/game_spec.rb --format doc                                                  ~rvm_rvmrc_cwd/codebreaker

Codebreaker::Game
  #start
    sends a welcome message
    prompts for the first guess
  #guess
    with no matches
      sends a mark with ''
  with 1 number match
    sends a mark with '_'
  with 1 exact match
    sends a mark with '+'

Finished in 0.0024 seconds
5 examples, 0 failures
