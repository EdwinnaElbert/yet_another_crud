class SubCategory < ApplicationRecord
  belongs_to :category
  validates :sub_category_name, :category_id, presence: true
end
