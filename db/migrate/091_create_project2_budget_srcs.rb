class CreateProject2BudgetSrcs < ActiveRecord::Migration
  def self.up
    create_table :project2_budget_srcs do |t|
      t.integer :project2_id
      t.integer :budget_src_id
      t.decimal :budget
      t.integer :nyear

      t.timestamps
    end
  end

  def self.down
    drop_table :project2_budget_srcs
  end
end
