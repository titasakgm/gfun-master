class FixColumnName < ActiveRecord::Migration
  def self.up
     rename_column :problems, :type, :type_name
  end

  def self.down
  end
end

