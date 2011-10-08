class CreateLr50s < ActiveRecord::Migration
  def self.up
    create_table :lr50s do |t|
      t.integer :user_id
      t.string :health_service
      t.integer :youth_2554
      t.integer :youth_2555
      t.integer :youth_2556

      t.timestamps
    end
  end

  def self.down
    drop_table :lr50s
  end
end
