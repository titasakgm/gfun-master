class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :title
      t.string :status
      t.integer :fiscal_year
      t.integer :yq1
      t.integer :yq2
      t.integer :yq3
      t.integer :yq4
      t.integer :a_budget
      t.integer :a_youth_no
      t.integer :b_budget
      t.integer :b_youth_no
      t.integer :c_budget
      t.integer :c_youth_no


      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end

