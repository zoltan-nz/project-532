class AddAttachmentColumnsToCategories < ActiveRecord::Migration
  def self.up
    add_attachment :categories, :attachment
  end

  def self.down
    remove_attachment :categories, :attachment
  end
end
