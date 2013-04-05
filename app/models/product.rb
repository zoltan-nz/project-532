class Product < ActiveRecord::Base
  belongs_to :business

  belongs_to :category

  has_many :product_pricings
  has_many :product_unavailabilities

  has_many :product_pricings

  validates_presence_of :name
  validates_uniqueness_of :name

  validates_presence_of :description
  validates_uniqueness_of :description
end



# == Schema Information
#
# Table name: products
#
#  id          :integer(8)      not null, primary key
#  name        :string(255)
#  description :string(255)
#  business_id :integer(4)
#  category_id :integer(4)
#  tax_id      :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

