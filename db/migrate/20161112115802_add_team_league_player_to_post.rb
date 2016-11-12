class AddTeamLeaguePlayerToPost < ActiveRecord::Migration
  def change
    add_column :posts, :team, :string
    add_column :posts, :player, :string
    add_column :posts, :postion, :string
  end
end
