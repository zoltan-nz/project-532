class AddNestedSetToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :lft, :integer
    add_column :categories, :rgt, :integer
    add_column :categories, :depth, :integer
  end
end
