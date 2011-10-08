class CreateBudgetSrcs < ActiveRecord::Migration
  def self.up
    create_table :budget_srcs do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :budget_srcs
  end
end
