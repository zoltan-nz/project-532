class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description

      t.references :business, index: true
      t.references :category, index: true
      t.references :tax, index: true

      t.timestamps
    end
  end
end
