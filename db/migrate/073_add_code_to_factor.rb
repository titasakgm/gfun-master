class AddCodeToFactor < ActiveRecord::Migration
  def self.up
    add_column :factors, :code, :string
  end

  def self.down
    remove_column :factors, :code
  end
end
