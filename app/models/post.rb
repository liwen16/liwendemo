class Post < ApplicationRecord
  attr_accessor :name, :body, :category_id
  belongs_to :category

  validate :name, :body, :category_id
end
