class AddVoteCountToPost < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :vote_count, :integer, default: 0
  end
end
