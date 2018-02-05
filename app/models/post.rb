class Post < ApplicationRecord
  has_many :posts_path

  validate :title, :body, :category_id
end
