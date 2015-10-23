require 'rails_helper'
#
describe "the add a post process" do
  it "adds a new post" do
    visit root_path
    click_on "Add Post"
    # fill_in 'Title', :with => "Big Bike"
    # fill_in 'Contributor', :with => "Sue Marie"
    # fill_in 'Description', :with => "Nice Bike"
    # fill_in 'Image', :with => "Image"
    post = FactoryGirl.create(:post)
    click_on 'Submit'
    post.title.should eq "Big Bike"
  end
end

# describe "the delete a post process" do
#   it "deletes a post" do
#     category = Category.create(:name => 'Bike')
#     post = Post.create(:title => 'New Bike', :contributor => 'Mary', :description => "Cool Bike", :image => 'image', :category_id => category.id)
#     visit category_path(category)
#     click_on 'Delete Post'
#     expect(page).to_not have_content 'Big Bike'
#   end
# end
