module Slugifier
  extend ActiveSupport::Concern

  included do
    validates :name, :slug, :presence => true
    validates :name, :slug, :uniqueness => true #, :scope => 
    before_validation :slugify
  end

  def slugify
    self.slug = Utilities::slugify(self.name)
  end
end
