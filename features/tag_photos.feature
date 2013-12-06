Feature: Tagging Photos

As a user
In order to find my photos
I want to add tags to my pictures


Scenario: Adding tags


Given I have uploaded a new photo with title "lmfao" with text "party rock" and tags "My tag"
Then I should see the title "lmfao" and text "party rock" and tags "My, tag  