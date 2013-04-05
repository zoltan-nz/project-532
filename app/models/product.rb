# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Product < ActiveRecord::Base
  belongs_to  :category

  validates   :name,        presence: true,   uniqueness: true
  validates   :description, presence: true,   uniqueness: true
end


