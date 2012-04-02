class Item < ActiveRecord::Base
  include Slugifier

  # should list_id NOT be mass-assignable??
  attr_accessible :date_available, :description, :list_id, :name, :slug

  belongs_to :list
  has_many :item_details
end
