** CUCUMBER NOTES **

Run the cucumber tests via: cucumber

Given steps represent the stage of the world before an event.
When steps represeqnt the event.
Then steps represent the expected outcomes
And and But steps take on the quality of the previous step.  
The And step is a second Then (a second expected outcome)


Run a single cucumber feature:

  cucumber features/codebreaker_submits_guess.feature