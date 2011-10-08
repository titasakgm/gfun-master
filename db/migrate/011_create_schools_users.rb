class CreateSchoolsUsers < ActiveRecord::Migration
  def self.up
    create_table :schools_users do |t|
      t.integer :school_id
      t.integer :user_id
      t.integer :male_no
      t.integer :female_no
      t.timestamps
    end
  end

  def self.down
    drop_table :schools_users
  end
end

