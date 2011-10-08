class CreateThreatTypes < ActiveRecord::Migration
  def self.up
    create_table :threat_types do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :threat_types
  end
end
