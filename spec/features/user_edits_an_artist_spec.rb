require 'rails_helper'

RSpec.feature "User can edit artist" do
  scenario "they visit that artist's show page and edit artist" do
    artist = Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    visit artist_path(artist)
    click_on "Edit"
    fill_in "artist_name", with: "Michael Jackson"
    click_on "Update Artist"

    expect(page).to have_content "Michael Jackson" 
  end
end