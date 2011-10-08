class AddWeightToThreat < ActiveRecord::Migration
  def self.up
    add_column :threats, :weight, :integer
  end

  def self.down
    remove_column :threats, :weight
  end
end
