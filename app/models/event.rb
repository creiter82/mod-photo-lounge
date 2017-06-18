class Event < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :main_image, PhotoUploader
  mount_uploaders :event_photos, PhotoUploader

end
