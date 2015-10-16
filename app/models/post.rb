class Post < ActiveRecord::Base
  belongs_to :category

  validates :title, :presence => true
  validates :contributor, :presence => true
  validates :image, :presence => true
  validates :description, :presence => true

end
