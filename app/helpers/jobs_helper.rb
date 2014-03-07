module JobsHelper
  def form_params(job)
    if job.id?
      { url: new_job_path( token: job.token ), html: {method: "patch"} }
    else
      {}
    end
  end
end
