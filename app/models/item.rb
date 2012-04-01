class Item < ActiveRecord::Base
  include Slugifier

  attr_accessible :date_available, :description, :name, :slug

  belongs_to :list
  has_many :item_details
end
