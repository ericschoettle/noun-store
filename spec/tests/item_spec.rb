require 'rails_helper'

describe "add a new item" do
  before(:each) do
    User.destroy_all
    Item.destroy_all
    Review.destroy_all
    @user = FactoryGirl.create(:user, :admin => true)
    login_as(@user, :scope=>:user)
  end

  it "adds a review to a product" do
    @item = FactoryGirl.create(:item)
    visit root_path()
    expect(page).to have_content 'thing for sale'
  end
end
