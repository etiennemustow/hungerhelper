module Helpers
  def add_restaurant
    visit 'restaurants/new'
    fill_in 'restaurant[name]', with: "Etis Diner"
    fill_in 'restaurant[description]', with: "A diner"
    click_button 'Save Restaurant'
end
end
