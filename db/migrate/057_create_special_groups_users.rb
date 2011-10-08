class CreateSpecialGroupsUsers < ActiveRecord::Migration
  def self.up
    create_table :special_groups_users do |t|
      t.integer :special_group_id
      t.integer :user_id
      t.string :flag
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :special_groups_users
  end
end
