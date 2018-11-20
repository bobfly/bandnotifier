class Gig < ApplicationRecord
  enum currency: [:kn, :eur]

  validates :name, presence: true
  validates :gig_date, presence: true
end
