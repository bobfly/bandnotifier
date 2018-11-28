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
    @data = {
      labels = Gig.gig_types.to_a,
      datasets = {
        label: "My First Dataset",
        backgroundColor: "rgba(220,220,220,0.2)",
        borderColor: "rgba(220,220,220,1)",
        data: @gigs.pluck(:gig_date)
      }
    }
  end
end
