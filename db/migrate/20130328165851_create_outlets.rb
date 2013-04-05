class CreateOutlets < ActiveRecord::Migration
  def change
    create_table :outlets do |t|
      t.string :name
      t.references :business, index: true
      t.references :pricing_band, index: true

      t.timestamps
    end
  end
end
