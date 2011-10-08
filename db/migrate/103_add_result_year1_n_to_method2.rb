class AddResultYear1NToMethod2 < ActiveRecord::Migration
  def self.up
    add_column :method2s, :result_year1_n, :integer
  end

  def self.down
    remove_column :method2s, :result_year1_n
  end
end
