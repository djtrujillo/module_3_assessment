class Api::V1::ItemsController < ApplicationController
  def index
    render json: Item.all, serializer: ItemSerializer
  end

  def show
    render json: Item.find(params[:id]), serializer: ItemSerializer
  end

  def destroy
    @item = Item.find(params[:id])
    render json: @item.delete, serializer: ItemSerializer
  end

  def create
    render json: Item.create(item_params), serializer: ItemSerializer
  end

  private

    def item_params
      params.require(:item).permit(:name, :description, :image_url)
    end

end
