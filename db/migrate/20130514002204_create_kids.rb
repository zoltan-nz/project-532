class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string  :name
      t.integer :age
      t.integer :relative_id
      t.integer :order_id

      t.timestamps
    end
  end
end
