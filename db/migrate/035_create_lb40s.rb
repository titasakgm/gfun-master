class CreateLb40s < ActiveRecord::Migration
  def self.up
    create_table :lb40s do |t|
      t.integer :user_id
      t.string :team_type
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4

      t.timestamps
    end
  end

  def self.down
    drop_table :lb40s
  end
end
