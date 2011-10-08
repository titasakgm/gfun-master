class AddResultYear1NToMethod4 < ActiveRecord::Migration
  def self.up
    add_column :method4s, :result_year1_n, :integer
  end

  def self.down
    remove_column :method4s, :result_year1_n
  end
end
