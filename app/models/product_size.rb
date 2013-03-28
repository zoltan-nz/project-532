class ProductSize < ActiveRecord::Base
  has_many :product_pricings
end

# == Schema Information
#
# Table name: product_sizes
#
#  id               :integer(4)      not null, primary key
#  label            :string(255)
#  stock_multiplier :float
#  created_at       :datetime
#  updated_at       :datetime
#

