class ProductSize < ActiveRecord::Base
  belongs_to :business

  has_many :product_pricings

  validates_presence_of :label
  validates_numericality_of :stock_multiplier
end


# == Schema Information
#
# Table name: product_sizes
#
#  id               :integer(4)      not null, primary key
#  label            :string(255)
#  business_id      :integer(4)
#  stock_multiplier :float           default(1.0), not null
#  created_at       :datetime
#  updated_at       :datetime
#

