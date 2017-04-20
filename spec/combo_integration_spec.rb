require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin return', {:type => :feature}) do
  it('asks for a number and returns the fewest number of coins and their type') do
    visit('/')
    fill_in('amount', :with => '11')
    click_button('Coinify')
    expect(page).to have_content('1 dimes 1 pennies')
  end
end
