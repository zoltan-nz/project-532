class Business < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
end

# == Schema Information
#
# Table name: businesses
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

