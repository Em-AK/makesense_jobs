class Job < ActiveRecord::Base
  THE_RIGHT_PERIOD = 42.days

  validates :email, presence: true
  validates :company_name, presence: true
  validates :title, presence: true
  validates :apply, presence: true

  mount_uploader :logo, LogoUploader

  before_create :add_token
  before_save :validate_url

  def validate_url
    unless !self.company_url? || self.company_url[0..6] == "http://"
      self.company_url = "http://#{self.company_url}"
    end
  end

  def company_clean_url
    self.company_url[7..-1] if company_url
  end

  scope :published, -> { where(published: true) }
  scope :displayed, -> { published.where(created_at: ((Time.now - THE_RIGHT_PERIOD)..Time.now)) }
  scope :no_bullshit, -> { displayed.where(highlighted: true) }

  def online?
    self.published? && self.created_at > Time.now - THE_RIGHT_PERIOD
  end

  private

  def add_token
    self.token = SecureRandom.uuid
  end
end
