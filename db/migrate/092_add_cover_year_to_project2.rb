class AddCoverYearToProject2 < ActiveRecord::Migration
  def self.up
    add_column :project2s, :cover_year, :integer
  end

  def self.down
    remove_column :project2s, :cover_year
  end
end
