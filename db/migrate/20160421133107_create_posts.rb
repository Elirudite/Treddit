class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :content
      t.integer :board_id
      t.integer :rating

      t.timestamps null: false
    end
  end
end
