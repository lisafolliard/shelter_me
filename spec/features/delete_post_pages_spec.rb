# describe "the delete a post process" do
#   it "deletes a post" do
#     category = Category.create(:name => 'Bike')
#     post = Post.create(:title => 'New Bike', :contributor => 'Mary', :description => "Cool Bike", :image => 'image', :category_id => category.id)
#     visit category_path(category)
#     click_on 'Delete Post'
#     expect(page).to_not have_content 'Big Bike'
#   end
# end
