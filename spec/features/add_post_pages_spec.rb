require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit root_path
    click_on "Add Post"
    post = FactoryGirl.create(:post)
    click_on 'Submit'
    post.title.should eq "Big Bike"
  end
end
