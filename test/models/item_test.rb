require "minitest_helper"

describe Item do

  subject { Item.new }

  # fixtures :all

  before do
    @item = Item.new
  end

  it "must be valid" do
    @item.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @item.blow_minds!
  #     @item.interesting?.must_equal true
  #   end
  # end

end
