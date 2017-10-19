require 'rails_helper'

feature 'restaurants' do
    scenario 'Visiting /new should return correct page' do
      visit '/restaurants/new'

      expect(page).to have_content 'Add a new restaurant!'
      expect(page).to have_css('input[type="text"]')
    end
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
