class Recruiter < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  has_many :jobs
  
  validate :password_valid, :email_valid
  validates_presence_of :company_name

  def password_valid
    if password.match(/\A(?=.*[a-zA-Z])(?=.*[0-9]).{8,}\z/)

    else
      errors.add :password, "your password must have at least 1 letter and 1 number"
    end
  end

  def email_valid
    if email.match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)

    else
      errors.add :password, "your email is not valid."
    end
  end

end
