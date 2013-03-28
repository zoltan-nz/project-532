class ProductVariant < ActiveRecord::Base
  has_many :product_pricing_variants
end

# == Schema Information
#
# Table name: product_variants
#
#  id            :integer(4)      not null, primary key
#  variant_type  :string(255)
#  variant_value :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

