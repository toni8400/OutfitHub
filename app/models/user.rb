class User < ApplicationRecord
  has_many :offers
  has_many :bookings,
  has_many :booking_as_owner, through: :offers, source: :bookings
  validates :username, :password, presense: true, length: { minimum: 6 }
  validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
end
