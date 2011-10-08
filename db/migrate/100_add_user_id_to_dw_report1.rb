class AddUserIdToDwReport1 < ActiveRecord::Migration
  def self.up
    add_column :dw_report1s, :user_id, :integer
  end

  def self.down
    remove_column :dw_report1s, :user_id
  end
end
