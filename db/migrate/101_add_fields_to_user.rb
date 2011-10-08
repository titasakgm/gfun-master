class AddFieldsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :position, :string
    add_column :users, :office, :string
    add_column :users, :phone, :string
    add_column :users, :mobile, :string
    add_column :users, :email, :string
  end

  def self.down
    remove_column :users, :email
    remove_column :users, :mobile
    remove_column :users, :phone
    remove_column :users, :office
    remove_column :users, :position
    remove_column :users, :lname
    remove_column :users, :fname
  end
end
