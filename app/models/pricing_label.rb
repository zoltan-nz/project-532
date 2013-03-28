class PricingLabel < ActiveRecord::Base
  has_many :product_pricings
end

# == Schema Information
#
# Table name: pricing_labels
#
#  id         :integer(4)      not null, primary key
#  label      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

