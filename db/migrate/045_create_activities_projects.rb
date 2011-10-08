class CreateActivitiesProjects < ActiveRecord::Migration
  def self.up
    create_table :activities_projects do |t|
      t.integer :activity_id
      t.integer :project_id
      t.string :freq
      t.string :provider
      t.string :sponsor

      t.timestamps
    end
  end

  def self.down
    drop_table :activities_projects
  end
end

