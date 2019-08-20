class Arena < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
end
