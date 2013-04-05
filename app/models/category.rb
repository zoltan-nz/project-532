# == Schema Information
#
# Table name: categories
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  parent_category_id :integer
#  department_id      :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Category < ActiveRecord::Base
  belongs_to  :department

  #this can be null and is only for hierarchy
  has_many    :sub_categories,    class_name: 'Category'
  belongs_to  :parent_category,   class_name: 'Category', foreign_key: 'parent_category_id'

  has_many    :products

  validates   :name, presence: true, uniqueness: true
end

