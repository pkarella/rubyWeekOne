require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe(' anagram result',{:type => :feature}) do
#   it('send information to results page') do
#     visit('/')
#     fill_in('input1', :with => 'dog')
#     fill_in('input2', :with => 'god')
#     click_button('Submit')
#     expect(page).to have_content('its an anagram and a palidrome')
#   end
# end
