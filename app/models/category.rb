class Category < ActiveRecord::Base
  acts_as_nested_set

  belongs_to  :department

  #this can be null and is only for hierarchy
  has_many    :sub_categories,    class_name: 'Category'
  belongs_to  :category,   class_name: 'Category', foreign_key: 'parent_id'

  has_many    :products

  has_attached_file :attachment, style: {medium: '500x500>', thumb: '50x50>'}

  validates   :name, presence: true, uniqueness: true

  def to_jq_upload
    {
      "name" => read_attribute(:attachment_file_name),
      "size" => read_attribute(:attachment_file_size),
      "url" => attachment.url(:original),
      "delete_url" => attachment_path(self),
      "delete_type" => "DELETE"
    }
  end
end

