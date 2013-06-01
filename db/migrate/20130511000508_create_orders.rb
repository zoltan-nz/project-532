class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :user
      t.belongs_to :meal
      t.belongs_to :kid
      t.date :date

      t.timestamps
    end
  end
end
