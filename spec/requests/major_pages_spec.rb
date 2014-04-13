require 'spec_helper'

describe "Major Pages" do
  
  describe "Home page" do
    it "should have the content 'Welcome to the Event Website!'" do
      visit root_path
      expect(page).to have_content('Welcome to the Event Website!')
    end
    
    it "should have the title 'Home'" do
      visit root_path
      expect(page).to have_title("Event Website | Home")
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us' " do
      visit about_path
      expect(page).to have_content('About Us')
    end
    
    it "should have the title 'About Us'" do
      visit about_path
      expect(page).to have_title("Event Website | About Us")
    end
  end
  
  describe "Contact page" do
    it "should have the content 'Contact' " do
      visit contact_path
      expect(page).to have_content('Contact')
    end
    
    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Event Website | Contact")
    end
  end
  
end
