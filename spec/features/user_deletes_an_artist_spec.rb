require 'rails_helper'

RSpec.feature "User can delete artist" do
  scenario "they visit that artist's show page and delete artist" do
    artist = Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    
    visit artist_path(artist)
    
      click_on "Delete"
      current_path.should == artist_path
  end
end