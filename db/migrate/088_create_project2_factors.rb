class CreateProject2Factors < ActiveRecord::Migration
  def self.up
    create_table :project2_factors do |t|
      t.integer :project2_id
      t.integer :factor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project2_factors
  end
end
