class CreateCommunities < ActiveRecord::Migration
  def self.up
    create_table :communities do |t|
      t.string :name
      t.text :description
      t.text :address
      t.integer :tumbon_id

      t.timestamps
    end
  end

  def self.down
    drop_table :communities
  end
end
