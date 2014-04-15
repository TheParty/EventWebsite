Given(/^I am a user$/) do
end

When(/^I fill the sign up form with valid data$/) do
  visit('signup')
  fill_in"Username", with: "Abeve"
  fill_in"Email", with: "abeve.tayachow@colorado.edu"
  fill_in"Password", with: "123456"
  fill_in "Password_confirmation", with:"123456"
  click_buttton"signup"
end

Then(/^I should be registered in application$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be logged in$/) do
  pending # express the regexp above with the code you wish you had
end
