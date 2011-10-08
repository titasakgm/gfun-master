class CreateLr602555s < ActiveRecord::Migration
  def self.up
    create_table :lr602555s do |t|
      t.integer :user_id
      t.string :project_name
      t.string :target_name
      t.string :activity_type
      t.integer :target_no
      t.string :team_type
      t.integer :team_no
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :lr602555s
  end
end
