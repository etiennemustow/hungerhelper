require 'rails_helper'

feature 'restaurants' do
  context 'Adding a restaurant' do
    scenario 'Adding a new restaurant should display on page' do
      visit '/restaurants/new'
      fill_in 'restaurant[name]', with: "Etis Diner"
      fill_in 'restaurant[description]', with: "A diner"
      click_button 'Save Restaurant'

      visit '/restaurants/1'
      expect(page).to have_content "Name: Etis Diner"
      expect(page).to have_content "Description: A diner"
    end
  end
  context 'Links' do
    scenario 'Welcome page link should direct to restaurants list' do
      visit '/'
      click_link 'List of Restaurants'
      expect(page).to have_content 'List of Restaurants'
    end
    scenario 'New Restaurant link should direct to new restaurant page' do
      visit '/restaurants'
      click_link 'New Restaurant'
      expect(page).to have_content 'Add a new restaurant!'
      expect(page).to have_css('input[type="text"]')
    end
  end
end
