class Cheat < ApplicationRecord
  belongs_to :title
  has_many :characters , dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :name, presence: true
  validates :cheat_detail, presence: true
  

  def favorited?(customer)
    return false if customer.nil?
   favorites.where(customer_id: customer.id).exists?
  end

   validates :evaluation, numericality: {
   less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1}, presence: true

  def self.looks(searches, words)
    if searches == "perfect_match"
      @cheat = Cheat.where("name LIKE ?", "#{words}")
    else
      @cheat = Cheat.where("name LIKE ?", "%#{words}%")
    end
  end
end
