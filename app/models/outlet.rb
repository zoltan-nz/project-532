class Outlet < ActiveRecord::Base
  belongs_to :business
  belongs_to :pricing_band

  has_many :product_unavailabilities
end

# == Schema Information
#
# Table name: outlets
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  business_id :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

