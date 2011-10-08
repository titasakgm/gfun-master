class CreateProgresses < ActiveRecord::Migration
  def self.up
    create_table :progresses do |t|
      t.integer :projects_staff_id
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.string :q4

      t.timestamps
    end
  end

  def self.down
    drop_table :progresses
  end
end
