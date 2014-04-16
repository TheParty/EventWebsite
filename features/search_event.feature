Feature: sorting the events by name,location and date should give the expected results

Background: movies have been added to database
  Given the following Events exist:
   |event name|event location|event time|event description|host|
   |Birthday  |Boulder       |4/31/2014 |suprise party    |Jon |
   |Graduation|Denver        |5/10/2014 |Finished school  |Sam |
 And I am on the Search Event home page
 
Scenario: sort Event alphabetically
When I sort the search by name 
Then I should see the Birthday before Graduation

Scenario:sort event by location
When I sort the search by location-Denver
Then I should see the Graduation before Birthday

Scenario:sort event by date
Given I am a user
When I sort the search by date 
Then I should see the Birthday before Graduation
