class CreateLr20s < ActiveRecord::Migration
  def self.up
    create_table :lr20s do |t|
      t.integer :user_id
      t.string :behavior_problem
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :lr20s
  end
end
