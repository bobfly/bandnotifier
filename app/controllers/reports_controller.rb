class ReportsController < ApplicationController
  def index
    min_year = Gig.minimum(:gig_date).strftime("%Y").to_i
    max_year = Gig.maximum(:gig_date).strftime("%Y").to_i
    @years = [*min_year..max_year]
    @gigs = Gig.all
  end
end
