require 'rails_helper'

RSpec.feature "User sign up" do
  scenario "with valid credentials" do
    visit '/'

    expect(page).to have_link('Sign Up')
    click_link 'Sign Up'

    fill_in "Email", with: 'admin@admin.com'
    fill_in "Password", with: 'admin1'
    fill_in "Password confirmation", with: 'admin1'

    click_button "Sign up"

    expect(page).to have_content("You have signed up successfully.")

  end

  scenario 'with invalid credentials' do
    visit '/'

    expect(page).to have_link('Sign Up')
    click_link 'Sign Up'

    fill_in 'Email', with: 'admin@admin.com'
    fill_in 'Password', with: 'admin1'

    click_button "Sign up"

    expect(page).to have_content('error')
  end
end
