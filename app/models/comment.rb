class Comment < ApplicationRecord
  belongs_to :customer,optional: true
  belongs_to :title,optional: true
  belongs_to :cheat,optional: true
  belongs_to :character,optional: true
  belongs_to :bulletin_board,optional: true

  validates :body, presence: true, length: { maximum: 65_535 }
end
