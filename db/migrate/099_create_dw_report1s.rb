class CreateDwReport1s < ActiveRecord::Migration
  def self.up
    create_table :dw_report1s do |t|
      t.string :special_group_name
      t.integer :special_group_id
      t.integer :project2_id
      t.string :project2_title
      t.decimal :a_budget
      t.integer :budget_src_id
      t.string :budget_src_title

      t.timestamps
    end
  end

  def self.down
    drop_table :dw_report1s
  end
end
