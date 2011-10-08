class CreateSpecialGroups < ActiveRecord::Migration
  def self.up
    create_table :special_groups do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :special_groups
  end
end
