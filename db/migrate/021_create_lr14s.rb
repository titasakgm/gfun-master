class CreateLr14s < ActiveRecord::Migration
  def self.up
    create_table :lr14s do |t|
      t.integer :user_id
      t.string :special_people
      t.string :status
      t.integer :youth_no

      t.timestamps
    end
  end

  def self.down
    drop_table :lr14s
  end
end
