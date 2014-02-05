class Job < ActiveRecord::Base
  validates :email, presence: true
  validates :company_name, presence: true
  validates :title, presence: true

  mount_uploader :logo, LogoUploader
  before_create :add_token

  private

  def add_token
    self.token = SecureRandom.uuid
  end
end
