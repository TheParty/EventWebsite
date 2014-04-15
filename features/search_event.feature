Feature: sorting the events by name,location and date should give the expected results

Scenario: user choose to sort the events by name
Given I am a user
When I sort the search by name 
Then I should see the events listed alphabetically

Scenario:user choose to sort the results by location
Given I am a user
When I sort the search by location 
Then I should see the events listed that nearby the location

Scenario:user choose to sort the resulte by date
Given I am a user
When I sort the search by date 
Then I should see the events listed from the date that I listed to present
