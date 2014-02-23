
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



  def allow_cors
    headers["Access-Control-Allow-Origin"] = "*"
    headers["Access-Control-Allow-Methods"] = %w{GET POST PUT DELETE}.join(",")
    headers["Access-Control-Allow-Headers"] =
      %w{Origin Accept Content-Type X-Requested-With X-CSRF-Token}.join(",")

    head(:ok) if request.request_method == "OPTIONS"
    # or, render text: ''
    # if that's more your style
  end

end
