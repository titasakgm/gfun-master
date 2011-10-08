class CreateThreats < ActiveRecord::Migration
  def self.up
    create_table :threats do |t|
      t.integer :threat_type_id
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :threats
  end
end
