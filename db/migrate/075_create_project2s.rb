class CreateProject2s < ActiveRecord::Migration
  def self.up
    create_table :project2s do |t|
      t.string :title
      t.integer :nmonth
      t.integer :fiscal_year
      t.decimal :a_budget
      t.decimal :b_budget
      t.decimal :c_budget
      t.integer :year1n
      t.integer :year2n
      t.integer :year3n

      t.timestamps
    end
  end

  def self.down
    drop_table :project2s
  end
end
