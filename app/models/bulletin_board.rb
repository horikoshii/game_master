class BulletinBoard < ApplicationRecord
  belongs_to :title
  has_many :comments, dependent: :destroy
end
