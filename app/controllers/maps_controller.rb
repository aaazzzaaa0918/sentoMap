# encoding: utf-8

class MapsController < ApplicationController
  def index
  	@pageTitle = '銭湯マップ | リスト'
  	@mapData = Map.all
  end

  def show
  	@pageTitle = '銭湯マップ | 詳細'
  	@mapDetail = Map.find(params[:id])
  end
end
