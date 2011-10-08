class CreateLr75s < ActiveRecord::Migration
  def self.up
    create_table :lr75s do |t|
      t.integer :user_id
      t.string :service_name
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4

      t.timestamps
    end
  end

  def self.down
    drop_table :lr75s
  end
end
