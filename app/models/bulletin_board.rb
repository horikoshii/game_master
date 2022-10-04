class BulletinBoard < ApplicationRecord
  belongs_to :title,optional: true
  belongs_to :customer,optional: true
  has_many :comments, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 65_535 }
end
