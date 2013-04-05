class ProductVariant < ActiveRecord::Base
  belongs_to :business

  has_many :product_pricing_variants

  validates_presence_of :variant_type
  validates_presence_of :variant_value
end



# == Schema Information
#
# Table name: product_variants
#
#  id            :integer(8)      not null, primary key
#  business_id   :integer(4)
#  variant_type  :string(255)
#  variant_value :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

