class ItemDetail < ActiveRecord::Base
  belongs_to :item
  attr_accessible :location, :price, :url
end
