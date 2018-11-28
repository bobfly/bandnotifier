class GigsController < ApplicationController
  before_action :set_gig, only: [:edit, :update, :show, :destroy]
  def index
    @upcoming_gigs = Gig.where("gig_date >= ? and gig_date <= ?", Date.today, Date.today.end_of_year).order(gig_date: :desc)
    @next_gigs = Gig.where("gig_date > ?", Date.today.end_of_year).order(gig_date: :asc)
  end

  def past_gigs
    @past_gigs = Gig.where('gig_date < ?', Date.today).order(gig_date: :desc)
  end

  def new
    @gig = Gig.new
  end

  def create
    @gig = Gig.new(gig_params)
    if @gig.save
      redirect_to gigs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @gig.update_attributes(gig_params)
      redirect_to gigs_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
  end

  private
  def gig_params
    params.require(:gig).permit(:id, :name, :gig_date, :description, :price, :currency, :public, :gig_type)
  end

  def set_gig
    @gig = Gig.find(params[:id])
  end
end
