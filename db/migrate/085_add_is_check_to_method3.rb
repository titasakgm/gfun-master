class AddIsCheckToMethod3 < ActiveRecord::Migration
  def self.up
    add_column :method3s, :is_check, :boolean
  end

  def self.down
    remove_column :method3s, :is_check
  end
end
