class MapsController < ApplicationController
  def index
  	@mapData = Map.all
  end

  def show
  	@mapDetail = Map.find(params[:id])
  end
end
