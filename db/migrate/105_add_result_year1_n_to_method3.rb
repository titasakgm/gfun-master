class AddResultYear1NToMethod3 < ActiveRecord::Migration
  def self.up
    add_column :method3s, :result_year1_n, :integer
  end

  def self.down
    remove_column :method3s, :result_year1_n
  end
end
