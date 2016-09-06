require 'spec_helper'
feature 'List Links' do

  scenario 'I can see links on a page' do
    Link.create(url: 'http://www.buzzfeed.com', title: 'BuzzFeed')

    visit '/links'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('BuzzFeed')
    end
  end


end
