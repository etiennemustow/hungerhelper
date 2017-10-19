require 'rails_helper'

feature 'restaurants' do
  context 'No restaurants' do
    scenario 'Visiting /new should return correct page' do
    visit '/restaurants/new'

    expect(page).to have_content 'Add a new restaurant!'
    expect(page).to have_css('input[type="text"]')
    end
  end
 end
