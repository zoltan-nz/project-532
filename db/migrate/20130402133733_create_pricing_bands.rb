class CreatePricingBands < ActiveRecord::Migration
  def change
    create_table :pricing_bands do |t|
      t.string :name

      t.timestamps
    end
  end
end
