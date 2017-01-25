class PosterMailer < ActionMailer::Base
  default from: "join@makesense.org"

  def new_job_email(job)
    @recruiter = job.email
    @title = job.title
    @job_url = job_url(job, host: "http://jobs.makesense.org")
    @edit_url = new_job_url(token: job.token, host: "http://jobs.makesense.org")
    @company = job.company_name

    mail(to: @recruiter, bcc: 'join@makesense.org' , subject: "[Jobs.MakeSense] #{job.title}")
  end
end
