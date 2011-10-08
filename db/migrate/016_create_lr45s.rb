class CreateLr45s < ActiveRecord::Migration
  def self.up
    create_table :lr45s do |t|
      t.integer :user_id
      t.string :project_name
      t.string :target_name
      t.string :activity_name
      t.decimal :real_budget
      t.string :supporter
      t.integer :target_no
      t.datetime :define_date

      t.timestamps
    end
  end

  def self.down
    drop_table :lr45s
  end
end
