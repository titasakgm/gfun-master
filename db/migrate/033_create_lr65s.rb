class CreateLr65s < ActiveRecord::Migration
  def self.up
    create_table :lr65s do |t|
      t.integer :user_id
      t.string :project_name
      t.string :target_name
      t.string :activity_type
      t.integer :budget
      t.string :owner
      t.integer :target_no

      t.timestamps
    end
  end

  def self.down
    drop_table :lr65s
  end
end
