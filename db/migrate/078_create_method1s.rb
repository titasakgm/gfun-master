class CreateMethod1s < ActiveRecord::Migration
  def self.up
    create_table :method1s do |t|
      t.integer :project2_id
      t.integer :year1_n
      t.integer :year2_n
      t.integer :year3_n
      t.integer :density
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :method1s
  end
end
