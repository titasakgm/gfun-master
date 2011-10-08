class AddCategoryIdToSchools < ActiveRecord::Migration
  def self.up
    add_column :schools, :category_id, :integer
  end

  def self.down
    remove_column :schools, :category_id
  end
end
