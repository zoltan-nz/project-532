class ProductUnavailability < ActiveRecord::Base
  belongs_to :outlet
  belongs_to :product
end


# == Schema Information
#
# Table name: product_unavailabilities
#
#  id         :integer(8)      not null, primary key
#  outlet_id  :integer(4)
#  product_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

