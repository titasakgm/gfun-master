class AddWeightToActivitiesProject < ActiveRecord::Migration
  def self.up
    add_column :activities_projects, :weight, :integer
  end

  def self.down
    remove_column :activities_projects, :weight
  end
end
