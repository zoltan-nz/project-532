class CreateProductPricingVariants < ActiveRecord::Migration
  def change
    create_table :product_pricing_variants do |t|
      t.references :product_variant, index: true
      t.references :product_pricing, index: true

      t.timestamps
    end
  end
end
