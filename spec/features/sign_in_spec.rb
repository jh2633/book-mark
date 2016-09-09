require 'spec_helper'

feature 'sign in to user account' do

  scenario 'user signs in with incorrect password' do
    add_email_and_password
    click_button('Sign Up')
    visit '/sign_in'
    expect(page.status_code).to eq 200
    fill_in('email', with: 'joseph@coffeenutcase.com')
    fill_in('password', with: 'idontlovecoffee')
    click_button('Sign In')
    expect(page).to have_content('Incorrect Password')
  end



end
