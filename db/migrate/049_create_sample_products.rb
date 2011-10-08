class CreateSampleProducts < ActiveRecord::Migration
  def self.up
    create_table :sample_products do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :sample_products
  end
end
