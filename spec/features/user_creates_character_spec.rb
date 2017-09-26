require 'rails_helper'

feature 'user creates a character' do
  # As an authenticated user
  # I want to create a character
  # So my character can build quests
  #
  # Acceptance criteria:
  # - I must be given notification that my character creation was successful
  # - if I don't properly fill out the form I must receive error messages

  scenario 'user successfully creates character' do
    login_as(user, :scope => :user)
    visit root_path
    click_link 'Create Character'

  end

  scenario 'user fails to provide the required information'
  end
end
