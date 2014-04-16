Given(/^the following Events exist:$/) do |table|
  table.hashes.each do |event|
    Event.create!(movie)
  end
end



Given(/^I am on the Search Event home page$/) do
  visit('major_pages#home')
end
When(/^I sort the search by name$/) do
  @events=Event.find(:sort)
end
Then(/^I should see the Birthday before Graduation$/) do|arg1, arg2|
  assert page.body.index(e1) < page.body.index(e2)
  
end

When(/^I sort the search by location\-Denver$/) do
  @events=Event.find(:location)
end
Then(/^I should see the Graduation before Birthday$/) do|arg1, arg2|
  assert page.body.index(e2) < page.body.index(e1)
  
end
When(/^I sort the search by date$/) do
 @events=Event.find(:date)
end

Then(/^I should see the "(.*?)"  before "(.*?)" $/) do|arg1, arg2|
  assert page.body.index(e2) < page.body.index(e1)

end