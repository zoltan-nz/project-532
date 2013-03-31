class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.references :business, index: true
      t.string :label
      t.float :tax_1
      t.float :tax_2

      t.timestamps
    end
  end
end
