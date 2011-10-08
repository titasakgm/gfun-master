class CreateLb402555s < ActiveRecord::Migration
  def self.up
    create_table :lb402555s do |t|
      t.integer :user_id
      t.string :project_name
      t.integer :project_budget
      t.integer :dev_budget
      t.integer :budget
      t.text :sponsor

      t.timestamps
    end
  end

  def self.down
    drop_table :lb402555s
  end
end
