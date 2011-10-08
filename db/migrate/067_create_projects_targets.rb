class CreateProjectsTargets < ActiveRecord::Migration
  def self.up
    create_table :projects_targets, :id => false do |t|
      t.integer :project_id
      t.integer :target_id

      t.timestamps
    end
  end

  def self.down
    drop_table :projects_targets
  end
end

