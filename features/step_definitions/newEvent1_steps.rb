Given /^I am on the Events page$/ do
  visit '/events'
end
When /^I click on New Event$/ do
  click_link "New Event"
end
Then /^I should be sent to the New Event Page$/ do
  uri = URI.parse(current_url)
  uri.should == '/events/new'
end