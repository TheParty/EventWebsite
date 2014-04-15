Feature: User registration
Scenario: user register via the sign up form
Given I am a user
When I fill the sign up form with valid data
Then I should be registered in application 
And I should be logged in 