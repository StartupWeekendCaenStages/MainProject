
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
    @offer = Offer.find(params[:id])
    render :json => @offer
  end

  def search
    q = "%#{params[:keyword]}%"
    offers = Offer.where("title LIKE ? OR description LIKE ?", q, q)
    render :json => offers
  end

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end


end
