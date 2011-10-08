class AddY2BudgetToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :y2_budget, :integer
  end

  def self.down
    remove_column :projects, :y2_budget
  end
end
