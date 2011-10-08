class AddIsCheckToMethod4 < ActiveRecord::Migration
  def self.up
    add_column :method4s, :is_check, :boolean
  end

  def self.down
    remove_column :method4s, :is_check
  end
end
