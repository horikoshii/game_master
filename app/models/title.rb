class Title < ApplicationRecord
  belongs_to :platform
  #belongs_to :customer
  has_many :comments, dependent: :destroy
end
