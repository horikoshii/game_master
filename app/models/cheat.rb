class Cheat < ApplicationRecord

  has_many :characters , dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :information
  belongs_to :customer
  has_many :favorites, dependent: :destroy
  
  def favorited?(customer)
   favorites.where(customer_id: customer.id).exists?
  end

  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1}, presence: true
end
