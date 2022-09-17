class Customer < ApplicationRecord

  has_one_attached :image
  
  #has_many :titles, dependent: :destroy
  has_many :comments
  has_many :cheats, dependent: :destroy
  has_many :favorites, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
