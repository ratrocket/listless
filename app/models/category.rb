class Category < ActiveRecord::Base
  has_many :lists
  attr_accessible :description, :name, :slug
end
