class CreateLadmins < ActiveRecord::Migration
  def self.up
    create_table :ladmins do |t|
      t.integer :amphur_id
      t.string :name
    end
  end

  def self.down
    drop_table :ladmins
  end
end
