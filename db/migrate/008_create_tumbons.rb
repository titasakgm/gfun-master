class CreateTumbons < ActiveRecord::Migration
  def self.up
    create_table :tumbons do |t|
      t.string :name
      t.integer :amphur_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tumbons
  end
end
