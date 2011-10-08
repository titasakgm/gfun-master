class AddResultYear1NToMethod1 < ActiveRecord::Migration
  def self.up
    add_column :method1s, :result_year1_n, :integer
  end

  def self.down
    remove_column :method1s, :result_year1_n
  end
end
