class CreatePricingLabels < ActiveRecord::Migration
  def change
    create_table :pricing_labels do |t|
      t.string :label

      t.timestamps
    end
  end
end
