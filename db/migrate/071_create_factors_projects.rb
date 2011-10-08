class CreateFactorsProjects < ActiveRecord::Migration
  def self.up
    create_table :factors_projects, :id => false do |t|
      t.integer :factor_id
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :factors_projects
  end
end

