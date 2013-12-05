Feature: Posting 
In order to upload a new photo
As a user
I want to be able to upload a photo
 
   Background: 
     Given I am on new photo
 
   Scenario: Uploading a photo
     Given I have uploaded a new photo with titled "lmfao" with text "party rock"
     Then I should see the title "lmfao" and text "party rock"