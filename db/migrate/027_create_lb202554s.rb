class CreateLb202554s < ActiveRecord::Migration
  def self.up
    create_table :lb202554s do |t|
      t.integer :user_id
      t.string :team_type
      t.integer :team_no
      t.integer :e_team_no
      t.integer :f_team_no
      t.integer :wd_team_no
      t.integer :pd_team_no
      t.integer :budget
      t.text :trainner
      t.text :tool

      t.timestamps
    end
  end

  def self.down
    drop_table :lb202554s
  end
end
