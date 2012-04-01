require "minitest_helper"

describe Price do

  subject { Price.new }

  # fixtures :all

  before do
    @price = Price.new
  end

  it "must be valid" do
    @price.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @price.blow_minds!
  #     @price.interesting?.must_equal true
  #   end
  # end

end
