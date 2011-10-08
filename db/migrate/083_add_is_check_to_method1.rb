class AddIsCheckToMethod1 < ActiveRecord::Migration
  def self.up
    add_column :method1s, :is_check, :boolean
  end

  def self.down
    remove_column :method1s, :is_check
  end
end
