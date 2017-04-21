# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('the title case path', {:type => :feature}) do
#   it('processes one and two inputs') do
#     visit('/')
#     fill_in('one', :with => '')
#     fill_in('two', :with => '')
#     click_button('Submit')
#     expect(page).to have_content('Player 2 Wins!')
#   end
