require 'rails_helper'

describe "the add a tag process" do
  it "adds a new tag" do
    visit root_path
    click_on "Add Tag"
    tag = FactoryGirl.create(:tag)
    click_on 'Submit'
    tag.name.should eq "Boat"
  end
end
