class PricingBand < ActiveRecord::Base
  has_many :product_pricings
  has_many :outlets
end
