require 'rails_helper'

feature 'user creates an account' do
  # As an unathenticated user
  # I want to sign up
  # So that I can track my progress
  #
  # ACCEPTANCE CRITERIA
  # * I must specify a valid email adress
  # * I must specify and confirm a password
  # * If I do not perform the above I get an error message
  # * If I specify valid information, I register my account and am authenticated

  scenario 'specifying valid and required information' do
    visit root_path
    click_link "Sign Up"
    fill_in "Username", with: "user"
    fill_in "Email", with: "user@example.com"
    fill_in "user_password", with: 'password'
    fill_in "Password Confirmation", with: 'password'
    click_button 'Sign Up'

    expect(page).to have_content("Welcome!")
    expect(page).to have_content("Sign Out")
  end

  scenario 'required information is not supplied' do

  end

  scenario 'password confirmation does not match' do

  end
end
