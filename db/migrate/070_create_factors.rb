class CreateFactors < ActiveRecord::Migration
  def self.up
    create_table :factors do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :factors
  end
end
