require "minitest_helper"

describe List do

  subject { List.new }

  # fixtures :all

  before do
    @list = List.new
  end

  it "must be valid" do
    @list.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @list.blow_minds!
  #     @list.interesting?.must_equal true
  #   end
  # end

end
