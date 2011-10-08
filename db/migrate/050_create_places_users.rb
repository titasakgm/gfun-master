class CreatePlacesUsers < ActiveRecord::Migration
  def self.up
    create_table :places_users do |t|
      t.integer :place_id
      t.integer :user_id
      t.integer :male_no
      t.integer :female_no

      t.timestamps
    end
  end

  def self.down
    drop_table :places_users
  end
end
