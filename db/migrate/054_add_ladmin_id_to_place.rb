class AddLadminIdToPlace < ActiveRecord::Migration
  def self.up
    add_column :places, :ladmin_id, :integer
  end

  def self.down
    remove_column :places, :ladmin_id
  end
end
