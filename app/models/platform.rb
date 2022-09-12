class Platform < ApplicationRecord
  has_many :titles, dependent: :destroy
end
