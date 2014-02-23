
class OfferController < ApplicationController

  def index
    response.headers["Access-Control-Allow-Origin"] = "*"
    @offers = Offer.all
    render :json => @offers
  end

  def create
    response.headers["Access-Control-Allow-Origin"] = "*"
    @offer = Offer.new
    @offer.title = params[:title]
    @offer.description = params[:description]
    @offer.save
    render :json => []
  end

  def show
    response.headers["Access-Control-Allow-Origin"] = "*"
    @offer = Offer.find(params[:id])
    render :json => @offer
  end

  def search
    response.headers["Access-Control-Allow-Origin"] = "*"
    q = "%#{params[:keyword]}%"
    offers = Offer.where("title LIKE ? OR description LIKE ?", q, q)
    render :json => offers
  end



end
