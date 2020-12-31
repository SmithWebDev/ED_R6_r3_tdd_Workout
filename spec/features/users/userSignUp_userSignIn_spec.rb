require 'rails_helper'

RSpec.feature "User sign up" do
  scenario "with valid credentials" do
    visit '/'

    expect(page).to have_link('Sign Up')
    click_link 'Sign Up'

    fill_in "Email", with: 'admin@admin.com'
    fill_in "Password", with: 'admin1'
    fill_in "Password confirmation", with: 'admin1'

    expect(page).to have_content("Welcome! You have signed up successfully.")

  end
end
