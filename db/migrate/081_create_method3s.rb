class CreateMethod3s < ActiveRecord::Migration
  def self.up
    create_table :method3s do |t|
      t.integer :project2_id
      t.integer :target_id
      t.string :title
      t.integer :year1_n
      t.integer :year2_n
      t.integer :year3_n
      t.string :step1_title
      t.string :step2_title
      t.string :step3_title
      t.string :step4_title
      t.integer :step1_dens
      t.integer :step2_dens
      t.integer :step3_dens
      t.integer :step4_dens

      t.timestamps
    end
  end

  def self.down
    drop_table :method3s
  end
end
