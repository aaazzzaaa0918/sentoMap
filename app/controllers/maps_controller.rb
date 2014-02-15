# encoding: utf-8

class MapsController < ApplicationController
  def index
  	@pageTitle = '銭湯マップ | リスト'
  	@mapData = Map.all
  	# @ddd
  	@mapData.each do |data|
  		@ddd = data.ku.to_s
  	end
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
