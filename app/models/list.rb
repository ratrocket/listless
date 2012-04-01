class List < ActiveRecord::Base
  belongs_to :category
  has_many :items
  attr_accessible :description, :name, :slug
end
