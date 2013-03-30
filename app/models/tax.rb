class Tax < ActiveRecord::Base
  belongs_to :business


end

# == Schema Information
#
# Table name: taxes
#
#  id          :integer(4)      not null, primary key
#  business_id :integer(4)
#  label       :string(255)
#  tax_1       :float
#  tax_2       :float
#  created_at  :datetime
#  updated_at  :datetime
#

