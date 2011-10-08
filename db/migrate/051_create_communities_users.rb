class CreateCommunitiesUsers < ActiveRecord::Migration
  def self.up
    create_table :communities_users do |t|
      t.integer :community_id
      t.integer :user_id
      t.integer :male_no
      t.integer :female_no

      t.timestamps
    end
  end

  def self.down
    drop_table :communities_users
  end
end
