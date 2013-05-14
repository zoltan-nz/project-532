class Kid < ActiveRecord::Base
  belongs_to :user
  has_many :meals, through: :orders
  has_many :orders

end
