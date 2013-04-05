class ProductPricing < ActiveRecord::Base
  #if this is null then it is a business level pricing
  belongs_to :outlet

  belongs_to :pricing_band

  belongs_to :pricing_label
  belongs_to :product_size
  has_many :product_pricing_variants
end

#the query for products can look something like:
#current_tenant.products.all - current_outlet.product_unavailabilities
#
#Product.product_pricings.where("outlet_id = #{current_outlet.id}")
#Product.product_pricings.where("business_id = #{current_business.id}")


# == Schema Information
#
# Table name: product_pricings
#
#  id               :integer(8)      not null, primary key
#  product_id       :integer(4)
#  pricing_label_id :integer(4)
#  product_size_id  :integer(4)
#  tax_id           :integer(4)
#  pricing_band_id  :integer(4)
#  price            :decimal(10, 2)
#  created_at       :datetime
#  updated_at       :datetime
#

