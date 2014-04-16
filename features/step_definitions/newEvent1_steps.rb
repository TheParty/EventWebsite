Given /^I am on the Events page$/ do
  visit '/events'
end
When /^I click on New Event$/ do
  click_link "New Event"
end
Then /^I should be sent to the New Event Page$/ do
  current_path.should == '/events/new'
end