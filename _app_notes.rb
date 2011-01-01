

Codebreaker
├── bin
│   └── codebreaker
├── doc
├── features
│   ├── codebreaker_starts_game.feature
│   ├── codebreaker_submits_guess.feature
│   ├── step_definitions
│   │   └── codebreaker_steps.rb
│   └── support
│       └── env.rb
├── lib
│   ├── codebreaker
│   │   └── game.rb
│   └── codebreaker.rb
└── spec
    ├── codebreaker
    │   └── game_spec.rb
    └── spec_helper.rb


  App starts
  
      bin / codebreaker
      
            #!/usr/bin/env ruby
            $LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
            require 'codebreaker'

            game = Codebreaker::Game.new(STDOUT)
            game.start
            
                        
            
      lib / codebreaker / game.rb
      
            module Codebreaker
              class Game

                def initialize(output)
                  @output = output
                end

                def start(secret)
                  @secret = secret
                  @output.puts 'Welcome to Codebreaker!'
                  @output.puts 'Enter guess:'
                end

                def guess(guess)
                  if guess[0] == @secret[0]
                    mark = '+'
                  elsif @secret.include?(guess[0])
                    mark = '-'
                  else
                    mark = ''
                  end
                  @output.puts mark
                end

              end
            end