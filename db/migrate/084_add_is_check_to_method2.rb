class AddIsCheckToMethod2 < ActiveRecord::Migration
  def self.up
    add_column :method2s, :is_check, :boolean
  end

  def self.down
    remove_column :method2s, :is_check
  end
end
