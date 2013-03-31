class CreateProductUnavailabilities < ActiveRecord::Migration
  def change
    create_table :product_unavailabilities do |t|
      t.references :outlet, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
