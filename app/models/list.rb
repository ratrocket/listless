class List < ActiveRecord::Base
  include Slugifier

  attr_accessible :category_id, :description, :name, :slug

  belongs_to :category
  has_many :items
end
