class Gig < ApplicationRecord
  enum currency: [:kn, :eur]
  enum gig_type: [:birtija, :cvrga, :svatovi, :pratnja]

  validates :name, presence: true
  validates :gig_date, presence: true
  validates :gig_type, presence: true
end
