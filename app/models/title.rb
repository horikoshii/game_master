class Title < ApplicationRecord
  belongs_to :platform
  #belongs_to :customer
  has_many :informations, dependent: :destroy
  has_many :cheats, dependent: :destroy
  has_many :characters, dependent: :destroy
  has_many :comments, dependent: :destroy
end
