class Meal < ActiveRecord::Base
  has_many :kids, through: :orders
  has_many :users, through: :orders
end
