class ReviewsController < ApplicationController
  before_action :authorize, only: [:create]

  def create
    @item = Item.find(params[:item_id])
    @review = @item.reviews.create(review_params)
    @item.save

    redirect_to item_path(@item)
  end

private

  def review_params
    params.require(:review).permit(:body, :user_id)
  end
end
