class CreateRisks < ActiveRecord::Migration
  def self.up
    create_table :risks do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :risks
  end
end
