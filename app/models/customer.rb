class Customer < ApplicationRecord

  def own?(object)
    self.id == object.customer_id
  end

  has_one_attached :image

  #has_many :titles, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :cheats, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :bulletin_boards, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
