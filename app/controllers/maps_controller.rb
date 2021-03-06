# encoding: utf-8

class MapsController < ApplicationController
  def index
  	@pageTitle = '銭湯マップ東京'
  	@mapData = Map.all
  end

  def show
  	@pageTitle = '銭湯マップ | 詳細'
  	@mapDetail = Map.find(params[:id])
  end

  def data
  	@mapData = Map.all

  	respond_to do |format|
      format.html
      format.json {render :json => @mapData}
      format.xml  {render :xml => @mapData}
    end
  end
end
