require 'rails_helper'

describe "the add a tag process" do
  it "add a tag" do
    visit root_path
    click_on "Add Tag"
    fill_in 'Name', :with => "Tree"
    click_on 'Submit'
    expect(page).to have_content 'Tree'
  end
end
