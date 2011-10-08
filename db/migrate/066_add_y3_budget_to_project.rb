class AddY3BudgetToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :y3_budget, :integer
  end

  def self.down
    remove_column :projects, :y3_budget
  end
end
