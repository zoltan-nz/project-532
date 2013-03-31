class CreatePricingLabels < ActiveRecord::Migration
  def change
    create_table :pricing_labels do |t|
      t.string :label
      t.references :business, index: true
      t.references :tax, index: true

      t.timestamps
    end
  end
end
