class Department < ActiveRecord::Base
  belongs_to :business

  has_many :categories

  validates_presence_of :name
  validates_uniqueness_of :name
end


# == Schema Information
#
# Table name: departments
#
#  id         :integer(8)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

