
class OfferController < ApplicationController

  def index
    @offers = Offer.all
    render :json => @offers
  end

  def create
    @offer = Offer.new
    @offer.title = params[:title]
    @offer.description = description[:description]
    @offer.save
    render :json => []
  end

  def show
    @offers = Offer.all
    render :json => @offers
  end

end
