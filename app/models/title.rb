class Title < ApplicationRecord
  belongs_to :platform
  has_many :informations, dependent: :destroy
  has_many :cheats, dependent: :destroy
  has_many :characters, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :bulletin_boards, dependent: :destroy
end
