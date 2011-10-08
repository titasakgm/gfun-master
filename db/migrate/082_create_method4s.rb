class CreateMethod4s < ActiveRecord::Migration
  def self.up
    create_table :method4s do |t|
      t.integer :project2_id
      t.integer :target_id
      t.string :title
      t.integer :density
      t.integer :year1_n
      t.integer :year2_n
      t.integer :year3_n

      t.timestamps
    end
  end

  def self.down
    drop_table :method4s
  end
end
