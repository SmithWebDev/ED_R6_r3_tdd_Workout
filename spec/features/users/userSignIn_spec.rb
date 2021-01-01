require 'rails_helper'

RSpec.feature "User Signs in" do

  before do
    @admin = User.create!(email: 'admin@admin.com', password: 'admin1')
  end

  scenario 'with valid credentials' do
    visit '/'

    click_link 'Sign In'

    fill_in 'Email', with: @admin.email
    fill_in 'Password', with: @admin.password

    click_button 'Log in'

    expect(page).to have_content('Signed in successfully.')
  end

  scenario 'with invalid credentials' do
    visit '/'

    click_link 'Sign In'

    fill_in 'Email', with: @admin.email
    fill_in 'Password', with: ''

    click_button 'Log in'

    expect(page).to have_content('Invalid')
  end
end
