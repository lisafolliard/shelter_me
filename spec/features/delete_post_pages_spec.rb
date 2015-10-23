require 'rails_helper'

describe "the delete a post process" do
  it "delete a post" do
    visit root_path
    click_on "Add Post"
    fill_in 'Title', :with => "Treehouse"
    fill_in 'Contributor', :with => "Sue Marie"
    fill_in 'Description', :with => "Nice house"
    fill_in 'Image', :with => "Image"
    click_on 'Submit'
    click_on "Treehouse"
    click_on 'Delete Post'
    expect(page).to_not have_content 'Treehouse'
  end
end
