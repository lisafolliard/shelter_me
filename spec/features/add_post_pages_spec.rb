require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit categories_path
    click_on "Add Category"
    fill_in 'Name', :with => "Bike"
    click_on 'Submit'
    click_on "Bike"
    click_on 'Add Post'
    fill_in 'Title', :with => "Big Bike"
    fill_in 'Contributor', :with => "Sue Marie"
    fill_in 'Description', :with => "Nice Bike"
    fill_in 'Image', :with => "Image"
    click_on 'Submit'
    expect(page).to have_content "Big Bike"
  end
end
