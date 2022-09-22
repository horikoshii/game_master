class Comment < ApplicationRecord
  belongs_to :customer
  #belongs_to :title
  #belongs_to :cheat
  belongs_to :bulletin_board

  validates :body, presence: true, length: { maximum: 65_535 }
end
