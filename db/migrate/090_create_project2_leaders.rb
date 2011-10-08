class CreateProject2Leaders < ActiveRecord::Migration
  def self.up
    create_table :project2_leaders do |t|
      t.integer :project2_id
      t.integer :leader_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project2_leaders
  end
end
