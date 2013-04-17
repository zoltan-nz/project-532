class Category < ActiveRecord::Base
  acts_as_nested_set

  belongs_to  :department

  #this can be null and is only for hierarchy
  has_many    :sub_categories,    class_name: 'Category'
  belongs_to  :category,   class_name: 'Category', foreign_key: 'parent_id'

  has_many    :products

  validates   :name, presence: true, uniqueness: true
end

