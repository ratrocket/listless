class Item < ActiveRecord::Base
  attr_accessible :belongs_to, :date_available, :description, :name, :slug
end
