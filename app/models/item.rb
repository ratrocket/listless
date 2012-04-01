class Item < ActiveRecord::Base
  belongs_to :list
  has_many :item_details
  attr_accessible :date_available, :description, :name, :slug
end
