class AddMainPictureToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :main_picture, :string
  end
end
