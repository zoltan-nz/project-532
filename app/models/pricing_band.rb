class PricingBand < ActiveRecord::Base
  has_many :product_pricings
  has_many :outlets
end

# == Schema Information
#
# Table name: pricing_bands
#
#  id         :integer(8)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

