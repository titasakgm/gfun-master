class RemoveTumbonIdFromPlace < ActiveRecord::Migration
  def self.up
    remove_column :places, :tumbon_id
  end

  def self.down
    add_column :places, :tumbon_id, :integer
  end
end

