class CreateProductPricings < ActiveRecord::Migration
  def change
    create_table :product_pricings do |t|
      t.references :product, index: true
      t.references :pricing_label, index: true
      t.references :product_size, index: true
      t.references :tax, index: true
      t.references :pricing_band, index: true

      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
