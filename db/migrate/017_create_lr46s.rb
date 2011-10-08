class CreateLr46s < ActiveRecord::Migration
  def self.up
    create_table :lr46s do |t|
      t.integer :user_id
      t.string :health_service
      t.integer :youth_no
      t.datetime :define_date

      t.timestamps
    end
  end

  def self.down
    drop_table :lr46s
  end
end
