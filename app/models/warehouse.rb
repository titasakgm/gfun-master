class Warehouse < ActiveRecord::Base
  set_table_name "dummies"
  #self.abstract = true
  def self.my_flat
    self.find_by_sql "select * from targets"
  end
end

