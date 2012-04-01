require "minitest_helper"

describe ItemController do

  subject { ItemController }

  # fixtures :all

  before do
    @item = items(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create item" do
    assert_difference('Item.count') do
      post :create, item: @item.attributes
    end

    assert_redirected_to item_path(assigns(:item))
  end

  it "must show item" do
    get :show, id: @item.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @item.to_param
    assert_response :success
  end

  it "must update item" do
    put :update, id: @item.to_param, item: @item.attributes
    assert_redirected_to item_path(assigns(:item))
  end

  it "must destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item.to_param
    end

    assert_redirected_to items_path
  end

end
