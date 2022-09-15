class BulletinBoard < ApplicationRecord
  belongs_to :title
  belongs_to :customer
  has_many :comments, dependent: :destroy
end
