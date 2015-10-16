class Post < ActiveRecord::Base
  belongs_to :Category

  validates :title, :presence => true
end
