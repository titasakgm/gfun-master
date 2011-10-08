class CreateProblemsUsers < ActiveRecord::Migration
  def self.up
    create_table :problems_users do |t|
      t.integer :problem_id
      t.integer :user_id
      t.string :flag

      t.timestamps
    end
  end

  def self.down
    drop_table :problems_users
  end
end
