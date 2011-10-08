class CreateLr70s < ActiveRecord::Migration
  def self.up
    create_table :lr70s do |t|
      t.integer :user_id
      t.string :project_name
      t.string :target_name
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4

      t.timestamps
    end
  end

  def self.down
    drop_table :lr70s
  end
end
