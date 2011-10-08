class CreateCodeTables < ActiveRecord::Migration
  def self.up
    create_table :code_tables do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :code_tables
  end
end
