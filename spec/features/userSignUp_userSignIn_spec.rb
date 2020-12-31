require 'rails_helper'

RSpec.feature "User sign up" do
  scenario "User creates account" do
    visit '/'

    expect(page).to have_link('Sign Up')

  end
end
