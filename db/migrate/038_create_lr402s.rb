class CreateLr402s < ActiveRecord::Migration
  def self.up
    create_table :lr402s do |t|
      t.integer :user_id
      t.string :project_name
      t.string :target_name
      t.integer :target1_no
      t.integer :budget1
      t.integer :target2_no
      t.integer :budget2
      t.integer :target3_no
      t.integer :budget3

      t.timestamps
    end
  end

  def self.down
    drop_table :lr402s
  end
end
