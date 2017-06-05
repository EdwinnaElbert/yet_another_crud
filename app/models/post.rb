class Post < ApplicationRecord
  mount_uploader :images, ImageUploader
  has_many :comments, dependent: :destroy
  belongs_to :category
  validates :body, :title, presence: true
  @comments = Post.includes(:comments).order("comments.created_at desc")
end
