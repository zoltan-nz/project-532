class CreateProductSizes < ActiveRecord::Migration
  def change
    create_table :product_sizes do |t|
      t.string :label
      t.float :stock_multiplier

      t.timestamps
    end
  end
end
