require 'rails_helper'
require './spec/helpers'

feature 'restaurants' do
  context 'Adding a restaurant' do
    scenario 'Adding a new restaurant should display on page' do
      add_restaurant
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
    scenario 'New Restaurant link should direct to New Restaurant page' do
      visit '/restaurants'
      click_link 'New Restaurant'
      expect(page).to have_content 'Add a new restaurant!'
      expect(page).to have_css('input[type="text"]')
    end
    scenario 'Edit link should direct to the Edit page' do
      add_restaurant
      visit '/restaurants'
      click_link 'Edit'
      expect(page).to have_content 'Edit restaurant'
    end
  end
end
