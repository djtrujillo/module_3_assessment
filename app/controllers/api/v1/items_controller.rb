class Api::V1::ItemsController < ApplicationController
  def index
    @items = Item.all.map do |item|
      render json: ItemDecorator.new.all
    end
  end

end
