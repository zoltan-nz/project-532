class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id

      t.references :department, index: true

      t.timestamps
    end
  end
end
