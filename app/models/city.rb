# frozen_string_literal: true

class City < ApplicationRecord
  include ImageUploader[:image]

  validates :state, presence: true
  validates :us_city, presence: true
  validates :population, presence: true
  validates :one_hundred_pct_by, presence: true

  has_many :favorites, dependent: :destroy

  def self.search(search)
    where('LOWER(city_name) LIKE LOWER(?) OR LOWER(state) LIKE LOWER(?)', "%#{search}%", "%#{search}%")
  end
end
