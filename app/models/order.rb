class Order < ActiveRecord::Base
  belongs_to :meal
  belongs_to :kid
  belongs_to :user

  accepts_nested_attributes_for :meal
end
