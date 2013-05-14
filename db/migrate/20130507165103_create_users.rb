class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string     :name
      t.string     :email
      t.references :order

      t.timestamps
    end
  end
end
