class CreateLr12s < ActiveRecord::Migration
  def self.up
    create_table :lr12s do |t|
      t.integer :place_id
      t.integer :code_table_id
      t.integer :user_id
      t.integer :youth_no

      t.timestamps
    end
  end

  def self.down
    drop_table :lr12s
  end
end

