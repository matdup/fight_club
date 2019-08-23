class Arena < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings
  has_many :bookings_as_owner, through: :arenas, source: :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
