require "minitest_helper"

describe Category do

  subject { Category.new }

  # fixtures :all

  before do
    @category = Category.new
  end

  it "must be valid" do
    @category.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @category.blow_minds!
  #     @category.interesting?.must_equal true
  #   end
  # end

end
