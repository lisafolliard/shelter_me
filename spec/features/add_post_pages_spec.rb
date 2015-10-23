require 'rails_helper'

describe "the add a post process" do
  it "add a post" do
    visit root_path
    click_on "Add Post"
    fill_in 'Title', :with => "Treehouse"
    fill_in 'Contributor', :with => "Sue Marie"
    fill_in 'Description', :with => "Nice house"
    fill_in 'Image', :with => "Image"
    click_on 'Submit'
    expect(page).to have_content 'Treehouse'
  end
end
