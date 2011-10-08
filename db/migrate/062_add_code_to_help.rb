class AddCodeToHelp < ActiveRecord::Migration
  def self.up
    add_column :helps, :code, :string
  end

  def self.down
    remove_column :helps, :code
  end
end
