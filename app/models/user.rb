class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :arenas, dependent: :destroy
  has_many :bookings
  has_many :bookings_as_owner, through: :arenas, source: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
