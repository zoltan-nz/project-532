class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :name
      t.string    :email
      t.integer   :relative_id
      t.integer   :order_id

      t.timestamps
    end
  end
end
