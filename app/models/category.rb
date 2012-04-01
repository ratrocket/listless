class Category < ActiveRecord::Base
  include Slugifier

  attr_accessible :description, :name, :slug

  has_many :lists
end
