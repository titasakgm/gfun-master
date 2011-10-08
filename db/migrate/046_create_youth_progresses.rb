class CreateYouthProgresses < ActiveRecord::Migration
  def self.up
    create_table :youth_progresses do |t|
      t.integer :project_id
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4

      t.timestamps
    end
  end

  def self.down
    drop_table :youth_progresses
  end
end
