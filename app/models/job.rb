class Job < ActiveRecord::Base

  THE_RIGHT_PERIOD = 42.days

  validates :email, presence: true
  validates :company_name, presence: true
  validates :title, presence: true
  validates :apply, presence: true
  validates :company_url, format: URI::regexp(%w(http https))

  mount_uploader :logo, LogoUploader

  before_create :add_token
  before_save :format_company_url

  scope :published, -> { where(published: true) }
  scope :displayed, -> { published.where(created_at: ((Time.now - THE_RIGHT_PERIOD)..Time.now)) }
  scope :no_bullshit, -> { displayed.where(highlighted: true) }

  def validate_url
    unless !self.company_url? || self.company_url[0..6] == "http://"
      self.company_url = "http://#{self.company_url}"
    end
  end

  def company_clean_url
    company_url.match(URI::regexp(%w(http https)))[4] if company_url
  end

  def online?
    self.published? && self.created_at > Time.now - THE_RIGHT_PERIOD
  end

  private

  def add_token
    self.token = SecureRandom.uuid
  end

  def format_company_url
    unless company_url =~ URI::regexp(%w(http https))
      add_http_prefix
    end
  end

  def add_http_prefix
    if company_url
      self.company_url = "http://#{self.company_url}"
    end
  end
end
