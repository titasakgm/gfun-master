class CreateProject2SpecialGroups < ActiveRecord::Migration
  def self.up
    create_table :project2_special_groups do |t|
      t.integer :project2_id
      t.integer :special_group_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project2_special_groups
  end
end
