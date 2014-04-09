require 'spec_helper'

describe "Major Pages" do
  describe "Home page" do
    it "should have the content 'Test Content'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/major_pages/home'
      expect(page).to have_content('Test Content')
    end
    
    it "should have the title 'Home'" do
      visit '/major_pages/home'
      expect(page).to have_title("Event Website | Home")
    end
  end
end
