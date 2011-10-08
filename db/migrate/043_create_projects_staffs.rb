class CreateProjectsStaffs < ActiveRecord::Migration
  def self.up
    create_table :projects_staffs do |t|
      t.integer :project_id
      t.integer :staff_id
      t.integer :year1
      t.integer :amount1
      t.integer :year1
      t.integer :year2
      t.integer :amount2
      t.integer :year3
      t.integer :amount3
      t.timestamps
    end
  end

  def self.down
    drop_table :projects_staffs
  end
end

