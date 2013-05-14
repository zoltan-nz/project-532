class CreateRelatives < ActiveRecord::Migration
  def change
    create_table :relatives do |t|
      t.belongs_to :user
      t.belongs_to :kid

      t.timestamps
    end
  end
end
