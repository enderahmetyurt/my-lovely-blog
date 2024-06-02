class AddUserToComment < ActiveRecord::Migration[7.1]
  def change
    add_reference :comments, :user, foreign_key: true
  end
end
