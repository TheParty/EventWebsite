Feature: User create new event and fill in the desription of the event

Scenario: User create an event via the Edit Event page 
Given I am on the Events page 
When I click on New Event
Then I should be sent to the New Event Page  

Scenario: user create an event via the Edit Event page 
Given I am in the Edit Event page 
When I fill in the create event form
Then I should be able to invite other users  
And my event should be listed in the events list