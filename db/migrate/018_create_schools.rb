class CreateSchools < ActiveRecord::Migration
  def self.up
    create_table :schools do |t|
      t.string :name
      t.string :changwat
      t.string :ccode
      t.string :amphur
      t.string :acode
      t.string :tambon
      t.string :tcode
    end
  end

  def self.down
    drop_table :schools
  end
end
