class CreateLeaders < ActiveRecord::Migration
  def self.up
    create_table :leaders do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :leaders
  end
end
