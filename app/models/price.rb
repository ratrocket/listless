class Price < ActiveRecord::Base
  belongs_to :item
  attr_accessible :item_detail, :location, :price, :url
end
