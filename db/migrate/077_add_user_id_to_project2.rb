class AddUserIdToProject2 < ActiveRecord::Migration
  def self.up
    add_column :project2s, :user_id, :integer
  end

  def self.down
    remove_column :project2s, :user_id
  end
end
