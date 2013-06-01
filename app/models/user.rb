class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :trackable, :validatable

  has_many :kids
  has_many :meals, through: :orders
  has_many :orders

  accepts_nested_attributes_for :kids
  accepts_nested_attributes_for :meals
  accepts_nested_attributes_for :orders

  #acts_as_taggable
  #acts_as_taggable_on :meals, :orders

  validates :name, presence: true
end
