class ItemDetail < ActiveRecord::Base
  attr_accessible :location, :price, :url

  belongs_to :item
end
