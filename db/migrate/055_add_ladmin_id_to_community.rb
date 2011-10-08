class AddLadminIdToCommunity < ActiveRecord::Migration
  def self.up
    add_column :communities, :ladmin_id, :integer
  end

  def self.down
    remove_column :communities, :ladmin_id
  end
end
