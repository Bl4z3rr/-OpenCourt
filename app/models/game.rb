class Game < ApplicationRecord
  has_many :users
  has_many :bookings
  validates :name, presence: true
  validates :location, presence: true
  # validates :price, presence: true
  # validates :num_of_players, presence: true
  # validates :duration, presence: true
  # validates :description, presence: true
  # validates :date, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
