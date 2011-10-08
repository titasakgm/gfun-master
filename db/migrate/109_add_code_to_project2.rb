class AddCodeToProject2 < ActiveRecord::Migration
  def self.up
    add_column :project2s, :code, :string
  end

  def self.down
    remove_column :project2s, :code
  end
end
