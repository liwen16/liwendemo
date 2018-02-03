class Post < ApplicationRecord
  attr_accessor :name,:body,:category_id,:author_id
  belongs_to :category
end
