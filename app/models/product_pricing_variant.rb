class ProductPricingVariant < ActiveRecord::Base
  belongs_to :product_variant
  belongs_to :product_pricing
end


# == Schema Information
#
# Table name: product_pricing_variants
#
#  id                 :integer(8)      not null, primary key
#  product_variant_id :integer(4)
#  product_pricing_id :integer(4)
#  created_at         :datetime
#  updated_at         :datetime
#

