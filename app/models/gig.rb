class Gig < ApplicationRecord
  enum currency: [:kn, :eur]
  enum gig_type: [:birtija, :cvrga, :svatovi, :pratnja]

  validates :name, presence: true
  validates :gig_date, presence: true
  validates :gig_type, presence: true
  validates :price, presence: true
  validates :currency, presence: true
  validate :start_before_today


  def year
    self.gig_date.strftime('%Y')
  end


  private
  def start_before_today
    return if self.gig_date.blank?

    if self.gig_date < DateTime.now
      errors.add(:gig_date, :start_date_before_today)
    end
  end
end
