class AddRegIdAndCenterIdToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :reg_id, :integer
    add_column :users, :center_id, :integer
  end

  def self.down
    remove_column :users, :center_id
    remove_column :users, :reg_id
  end
end
