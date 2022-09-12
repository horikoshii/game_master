class Character < ApplicationRecord
  belongs_to :cheat
  belongs_to :title
  belongs_to :information
  has_many :tags, dependent: :destroy
  has_many :comments, dependent: :destroy
end
