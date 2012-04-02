require "minitest_helper"

describe ItemDetail do

  subject { ItemDetail.new }

  # fixtures :all

  before do
    @item_detail = ItemDetail.new
  end

  it "must be valid" do
    @item_detail.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @item_detail.blow_minds!
  #     @item_detail.interesting?.must_equal true
  #   end
  # end

end
