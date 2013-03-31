class CreateProductPricings < ActiveRecord::Migration
  def change
    create_table :product_pricings do |t|
      t.references :product, index: true
      t.references :pricing_label, index: true
      t.references :product_size, index: true
      t.references :tax, index: true
      t.references :outlet, index: true

      t.timestamps
    end
  end
end
