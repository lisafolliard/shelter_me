# require 'rails_helper'
#
# describe "the update a post process" do
#   it "updates a post" do
#     category = Category.create(:name => 'Bike')
#     post = Post.create(:title => 'New Bike', :contributor => 'Mary', :description => "Cool Bike", :image => 'image', :category_id => category.id)
#     visit category_path(category)
#     click_on 'Update Post'
#     fill_in 'Title', :with => "Big Bike"
#     fill_in 'Contributor', :with => "Sue Marie"
#     fill_in 'Description', :with => "Nice Bike"
#     fill_in 'Image', :with => "Image"
#     click_on 'Submit'
#     expect(page).to have_content 'Big Bike'
#   end
# end
