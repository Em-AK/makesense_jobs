class Organisation < ActiveRecord::Base
  validates_presence_of :name, :website
  validates :website, format: URI::regexp(%w(http https))

  mount_uploader :logo, LogoUploader

  # in order to be compatible with LogoUploader#store_dir
  def company_name
    name
  end
end

