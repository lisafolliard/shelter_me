class Post < ActiveRecord::Base
  belongs_to :Category

  validates :title, :presence => true
  validates :contributor, :presence => true
  validates :image, :presence => true


end
