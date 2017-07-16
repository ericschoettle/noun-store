require 'rails_helper'

describe "User accounts" do
  it "adds a new user, signs out, signs back in " do
    visit new_user_registration_path
    fill_in 'Email', :with=>'eric@fake.com'
    fill_in 'Password', :with=>'password'
    fill_in 'Password confirmation', :with=>'password'
    click_on 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
    click_on "Sign Out"
    expect(page).to have_content 'Signed out successfully.'
    visit new_user_session_path
    fill_in 'Email', :with=>'eric@fake.com'
    fill_in 'Password', :with=>'password'
    click_on "Log in"
    expect(page).to have_content 'Signed in successfully.'
  end

  it "gives error when nothing is entered" do
    visit new_user_registration_path
    click_on 'Sign up'
    expect(page).to have_content 'errors'
  end
end
