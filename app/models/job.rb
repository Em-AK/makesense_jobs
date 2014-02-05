class Job < ActiveRecord::Base
  belongs_to :company
  validates :email, presence: true

  before_create :add_token

  private

  def add_token
    self.token = SecureRandom.uuid
  end
end
