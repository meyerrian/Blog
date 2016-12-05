class AddStatsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :fg, :string
    add_column :posts, :ft, :string
    add_column :posts, :points, :string
    add_column :posts, :rebounds, :string
    add_column :posts, :assists, :string
    add_column :posts, :steals, :string
    add_column :posts, :blocks, :string
    add_column :posts, :turnovers, :string
  end
end
