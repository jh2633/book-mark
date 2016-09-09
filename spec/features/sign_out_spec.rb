require 'spec_helper'

feature 'user sign_out' do
  scenario 'user can sign out after signing in' do
    add_email_and_password
    fill_in('password_confirmation', with: 'ilovecoffeealot')
    click_button('Sign Up')
    visit '/links'
    click_button('Sign Out')
    expect(page.status_code).to eq 200
    expect(page).not_to have_content('joseph@coffeenutcase.com')
    expect(page).to have_content('ciao!')
  end
end
