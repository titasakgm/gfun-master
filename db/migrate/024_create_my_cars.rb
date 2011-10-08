class CreateMyCars < ActiveRecord::Migration
  def self.up
    create_table :my_cars do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :my_cars
  end
end
