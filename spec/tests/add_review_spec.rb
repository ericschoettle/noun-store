require 'rails_helper'

describe "add a new review" do

  before(:each) do
    User.destroy_all
    Item.destroy_all
    @user = FactoryGirl.create(:user)
    login_as(@user, :scope=>:user)
    @item = FactoryGirl.create(:item)
  end

  it "adds a review to a product" do
    @review = FactoryGirl.create(:review, :user_id => @user.id, :item_id => @item.id)
    visit item_path(@item)
    expect(page).to have_content 'glowing'
  end
end
