class AddBudgetSrcIdToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :budget_src_id, :integer
  end

  def self.down
    remove_column :projects, :budget_src_id
  end
end
