class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    @review = @item.reviews.new()
  end
end
