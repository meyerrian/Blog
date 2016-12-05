class AddThreesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :threes, :string
  end
end
