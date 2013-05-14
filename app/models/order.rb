class Order < ActiveRecord::Base
  belongs_to :meal
  belongs_to :kid
  belongs_to :user
end
