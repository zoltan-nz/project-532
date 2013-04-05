class Category < ActiveRecord::Base
  belongs_to :business

  belongs_to :department

  #this can be null and is only for hierarchy
  belongs_to :parent_category, :class_name => "Category"
  has_many :sub_categories, :class_name => "Category"

  has_many :products

  validates_presence_of :name
  validates_uniqueness_of :name
end


# == Schema Information
#
# Table name: categories
#
#  id              :integer(8)      not null, primary key
#  name            :string(255)
#  business_id     :integer(4)
#  department_id   :integer(4)
#  parent_category :integer(4)
#  created_at      :datetime
#  updated_at      :datetime
#

