class ReportsController < ApplicationController
  def index
    @gigs = Gig.all
    if params[:search]
      unless params[:search][:gig_type].blank?
      @gigs = @gigs.where(gig_type: params[:search][:gig_type])
      end
      if params[:search][:gig_date_greater] && params[:search][:gig_date_smaller]
        @gigs = @gigs.where("gig_date >= ? and gig_date <= ?", params[:search][:gig_date_greater], params[:search][:gig_date_smaller])
      end
    end
  end
end
