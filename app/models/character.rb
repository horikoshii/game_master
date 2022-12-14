class Character < ApplicationRecord
  belongs_to :title
  has_many :comments, dependent: :destroy

  enum iff_method: { enemy: 0, ally: 1 }
  enum attribution_method: { fire: 0, water: 1, nature: 2 }

  validates :iff_method, presence: true
  validates :attribution_method, presence: true
  validates :name, presence: true
  validates :skill, presence: true
  validates :skill_detail, presence: true

  def self.looks(searches, words)
    if searches == "perfect_match"
      @character = Character.where("name LIKE ?", "#{words}")
    else
      @character = Character.where("name LIKE ?", "%#{words}%")
    end
  end

end
