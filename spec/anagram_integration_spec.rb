require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes one and two inputsand tells wether it is an anagram') do
    visit('/')
    fill_in('one', :with => 'dog')
    fill_in('two', :with => 'god')
    click_button('Submit')
    expect(page).to have_content('its an anagram and this is also a palindrome')
  end
