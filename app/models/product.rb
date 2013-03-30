class Product < ActiveRecord::Base
  belongs_to :business

  belongs_to :category

  has_many :product_pricings
  has_many :product_unavailabilities

  validates_presence_of :name
  validates_uniqueness_of :name
end


# == Schema Information
#
# Table name: products
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  business_id :integer(4)
#  tax_id      :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

