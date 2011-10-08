class AddWeightToThreatType < ActiveRecord::Migration
  def self.up
    add_column :threat_types, :weight, :integer
  end

  def self.down
    remove_column :threat_types, :weight
  end
end
