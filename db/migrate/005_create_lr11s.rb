class CreateLr11s < ActiveRecord::Migration
  def self.up
    create_table :lr11s do |t|
      t.integer :school_id
      t.integer :code_table_id
      t.integer :user_id
      t.integer :male_no
      t.integer :female_no

      t.timestamps
    end
  end

  def self.down
    drop_table :lr11s
  end
end

