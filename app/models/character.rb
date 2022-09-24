class Character < ApplicationRecord
  #belongs_to :cheat
  belongs_to :title
  #belongs_to :information
  has_many :tags, dependent: :destroy
  has_many :comments, dependent: :destroy

  enum iff_method: { enemy: 0, ally: 1 }
  enum attribution_method: { fire: 0, water: 1, nature: 2 }

end
