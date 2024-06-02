class RemoveCommentTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :comments, if_exists: true
  end
end
