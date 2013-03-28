class ProductPricing < ActiveRecord::Base
  belongs_to :product
  belongs_to :pricing_label
  belongs_to :product_size
  has_many :product_pricing_variants
end

# == Schema Information
#
# Table name: product_pricings
#
#  id               :integer(4)      not null, primary key
#  product_id       :integer(4)
#  pricing_label_id :integer(4)
#  product_size_id  :integer(4)
#  tax_1            :float
#  tax_2            :float
#  created_at       :datetime
#  updated_at       :datetime
#

