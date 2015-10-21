# require 'rails_helper'
#
# describe "the add a category process" do
#   it "adds a new category" do
#     visit categories_path
#     click_on "Add Category"
#     fill_in 'Name', :with => "Bike"
#     click_on 'Submit'
#     expect(page).to have_content "Bike"
#   end
# end
#
# describe "the update a category process" do
#   it "updates a category" do
#     visit categories_path
#     click_on "Add Category"
#     fill_in 'Name', :with => "Bike"
#     click_on 'Submit'
#     click_on "Bike"
#     click_on "Update Category"
#     fill_in 'Name', :with => 'Bikes'
#     click_on 'Submit'
#     expect(page).to have_content "Bikes"
#   end
# end
#
# describe "the delete a category process" do
#   it "deletes a category" do
#     visit categories_path
#     click_on "Add Category"
#     fill_in 'Name', :with => "Bike"
#     click_on 'Submit'
#     click_on "Bike"
#     click_on "Delete Category"
#     expect(page).to_not have_content "Bikes"
#   end
# end
