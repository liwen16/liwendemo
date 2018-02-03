class Category < ApplicationRecord
  attr_accessor :body
  has_many  :posts
end
