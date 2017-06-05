class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.string :author_name
      t.text :comment_body
      t.integer :post_id

      t.timestamps
    end
  end
end
