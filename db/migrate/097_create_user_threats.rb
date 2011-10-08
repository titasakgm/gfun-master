class CreateUserThreats < ActiveRecord::Migration
  def self.up
    create_table :user_threats do |t|
      t.integer :user_id
      t.integer :threat_id

      t.timestamps
    end
  end

  def self.down
    drop_table :user_threats
  end
end
