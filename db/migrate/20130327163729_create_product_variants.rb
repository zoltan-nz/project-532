class CreateProductVariants < ActiveRecord::Migration
  def change
    create_table :product_variants do |t|
      t.string :variant_type
      t.string :variant_value

      t.timestamps
    end
  end
end
