class AddCodeToTarget < ActiveRecord::Migration
  def self.up
    add_column :targets, :code, :string
  end

  def self.down
    remove_column :targets, :code
  end
end
