require 'rails_helper'

RSpec.feature "User sees all artist" do
  scenario "they enter home page to see all artists" do
    artist_name = Artist.create(name: "Bob Marley", image_path: "www.turing.io")
    visit '/artists'
    expect(page).to have_content "All Artists"
    expect(page).to have_content artist_name.name
    expect(page).to have_link "New artists",  href: new_artist_path
  end
end