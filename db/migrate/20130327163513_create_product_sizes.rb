class CreateProductSizes < ActiveRecord::Migration
  def change
    create_table :product_sizes do |t|
      t.string :label
      t.references :business, index: true
      t.float :stock_multiplier, default: 1, null: false

      t.timestamps
    end
  end
end
