class AddReferencePostIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :reference_post_id, :integer
  end
end
