class CreateProject2Targets < ActiveRecord::Migration
  def self.up
    create_table :project2_targets do |t|
      t.integer :project2_id
      t.integer :target_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project2_targets
  end
end
