class Post < ActiveRecord::Base
  # belongs_to :category
  has_and_belongs_to_many :tags


  validates :title, :presence => true
  validates :contributor, :presence => true
  validates :image, :presence => true
  validates :description, :presence => true

end
