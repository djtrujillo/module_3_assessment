require 'rails_helper'

feature "user can see stores within 25 miles of zip code" do
# As a user

  context "as a user" do
    it "can search for zip and return stores" do
      # When I visit "/"
      visit "/"
      # And I fill in a search box with "80202" and click "search"
      fill_in "q", :with => "80202"
      click_on "Locate"
      # Then my current path should be "/search" (ignoring params)
      expect(current_path).to eq("/search")

      # And I should see stores within 25 miles of 80202
      # And I should see a message that says "17 Total Stores"
      expect(page).to have_content("17 Total Stores")

      expect(page).to have_content("Name: ")
      expect(page).to have_content("City: ")
      expect(page).to have_content("Distance: ")
      expect(page).to have_content("Phone Number: ")
      expect(page).to have_content("Store Type: ")

      expect(page).to have_content("Colorado Blvd")
      expect(page).to have_content("Denver")
      expect(page).to have_content("5.59")
      expect(page).to have_content("8.39")
      expect(page).to have_content("303-273-5617")
      expect(page).to have_content("Big Box")
    end
  end
end

# And I should see exactly 10 results (There are 17 stores within 25 miles. We want to display 10 on this page and 7 on the next. Get the first page to work first from start to finish and worry about pagination later.)
# And I should see the long name, city, distance, phone number and store type for each of the 10 results
