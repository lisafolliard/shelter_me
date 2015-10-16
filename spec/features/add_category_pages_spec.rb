require 'rails_helper'

describe "the add a category process" do
  it "adds a new category" do
    visit categories_path
    click_on "Add Category"
    fill_in 'Name', :with => "Bike"
    click_on 'Submit'
    expect(page).to have_content "Bike"
  end
end
