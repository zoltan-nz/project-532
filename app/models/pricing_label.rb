class PricingLabel < ActiveRecord::Base
  belongs_to :business

  has_many :product_pricings

  validates_presence_of :label
end



# == Schema Information
#
# Table name: pricing_labels
#
#  id          :integer(8)      not null, primary key
#  label       :string(255)
#  business_id :integer(4)
#  tax_id      :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

