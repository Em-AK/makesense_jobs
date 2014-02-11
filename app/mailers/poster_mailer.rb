class PosterMailer < ActionMailer::Base
  default from: "emilien.ak@gmail.com"

  def new_job_email(job)
    @recruiter = job.email
    @title = job.title
    @job_url = job_url(job, host: "http://dev-mksjobs.herokuapp.com/")
    @edit_url = new_job_url(token: job.token, host: "http://dev-mksjobs.herokuapp.com/")
    @company = job.company_name

    mail(to: @recruiter, subject: '[Jobs.MakeSense]' + job.title)
  end
end
