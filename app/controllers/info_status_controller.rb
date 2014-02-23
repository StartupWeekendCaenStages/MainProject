class InfoStatusController < ApplicationController

  def index
    response.headers["Access-Control-Allow-Origin"] = "*"
    infos = InfoStatus.all
    render :json => infos
  end

  def create
    response.headers["Access-Control-Allow-Origin"] = "*"
    info = InfoStatus.new
    info.text = params[:text]
    info.save
    render :json => []
  end

  def show
    response.headers["Access-Control-Allow-Origin"] = "*"
    info = InfoStatus.find(params[:id])
    render :json => info
  end

end
