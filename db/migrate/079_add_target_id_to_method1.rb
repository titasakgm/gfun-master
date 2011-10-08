class AddTargetIdToMethod1 < ActiveRecord::Migration
  def self.up
    add_column :method1s, :target_id, :integer
  end

  def self.down
    remove_column :method1s, :target_id
  end
end
