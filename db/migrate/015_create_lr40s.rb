class CreateLr40s < ActiveRecord::Migration
  def self.up
    create_table :lr40s do |t|
      t.integer :user_id
      t.string :project_name
      t.string :target_name
      t.string :method
      t.decimal :plan_budget
      t.string :owner
      t.integer :target_no
      t.datetime :define_date

      t.timestamps
    end
  end

  def self.down
    drop_table :lr40s
  end
end
