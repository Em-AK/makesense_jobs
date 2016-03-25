class Organisation < ActiveRecord::Base
  validates_presence_of :name, :website
  validates :website, format: URI::regexp(%w(http https))
end
