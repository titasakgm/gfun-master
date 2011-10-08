class CreateLb30s < ActiveRecord::Migration
  def self.up
    create_table :lb30s do |t|
      t.integer :user_id
      t.string :team_type
      t.integer :pd_team_no

      t.timestamps
    end
  end

  def self.down
    drop_table :lb30s
  end
end
