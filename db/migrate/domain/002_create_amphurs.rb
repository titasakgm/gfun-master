class CreateAmphurs < ActiveRecord::Migration
  def self.up
    create_table :amphurs do |t|
      t.integer :province_id
      t.string :name
    end
  end

  def self.down
    drop_table :amphurs
  end
end
