class AddNdayToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :nday, :integer
  end

  def self.down
    remove_column :projects, :nday
  end
end
