require 'rails_helper'

RSpec.feature 'Signing users out' do
  before do
    @user = User.create!(email: "admin@admin.com", password: 'admin1')

    visit '/'

    click_link 'Sign In'

    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password

    click_button 'Log in'
  end
  scenario do
    visit '/'

    click_link "Sign Out"
    expect(page).to have_content('Signed out successfully.')
  end
end
