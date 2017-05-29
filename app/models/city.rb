class City < ApplicationRecord
  include ImageUploader[:image]

  validates :state, presence: true
  validates :us_city, presence: true
  validates :population, presence: true
  validates :one_hundred_pct_by, presence: true

  has_many :favorites, dependent: :destroy
end
