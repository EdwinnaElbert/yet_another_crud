class Category < ApplicationRecord
  has_many :posts
  has_many :sub_categories
  validates :category_name, presence: true
end
