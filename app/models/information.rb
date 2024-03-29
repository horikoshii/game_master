class Information < ApplicationRecord

  belongs_to :title

  validates :name, presence: true
  validates :information_detail, presence: true

  enum type_method: { intelligence: 0, new_character: 1, event: 2 }
end
