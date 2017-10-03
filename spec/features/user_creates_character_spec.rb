require 'rails_helper'

feature 'user creates a character' do
  # As an authenticated user
  # I want to create a character
  # So my character can build quests
  #
  # Acceptance criteria:
  # - I must be given notification that my character creation was successful
  # - if I don't properly fill out the form I must receive error messages
  let!(:user) { FactoryGirl.create(:user) }

  scenario 'user successfully creates character' do
    login_as(user, :scope => :user)
    visit root_path
    click_link 'Create A Character'
    fill_in 'Name', with: 'Conan'
    page.select "6'5", from: "Height"
    page.select "225", from: "Weight"
    page.select "Male", from: "Gender"
    page.select "Black", from: "Hair Color"
    page.select "Blue", from: "Eye Color"
    page.select "32", from: "Age"

    click_button 'Create Character'
    expect(page).to have_content("Character successfully created.")
    expect(page).to have_content("Now you are ready to select a quest and begin questing!")
  end

  scenario 'user fails to provide the required information' do

  end
end
