class JobsController < ApplicationController

  def index
    # display only published jobs created less than 42 days ago
    @jobs = Job.displayed
    if params[:search]
      text = "%#{params[:search]}%"
      @jobs = @jobs.where('unaccent(jobs.description) ILIKE unaccent(?) OR unaccent(jobs.title) ILIKE unaccent(?)  OR unaccent(jobs.company_name) ILIKE unaccent(?) OR unaccent(jobs.location) ILIKE unaccent(?)', text, text, text, text )
    end
    @jobs = @jobs.sort{ |a,b| b.created_at <=> a.created_at }
  end

  def show
    #it should display job if created less than 42 days ago
    @job = Job.find params[:id]
    unless @job.online?
      redirect_to jobs_oops_path
    end
  end

  def new
    if params[:token]
      @job = Job.find_by_token params[:token]
      session[:job_token] = @job.token
    else
      @job = Job.new
      session[:job_token] = nil
    end
  end

  def create
    @job = Job.new job_params
    if @job.save
      PosterMailer.new_job_email(@job).deliver
      session[:job_token] = @job.token
      redirect_to preview_job_path
    else
      render action: 'new'
    end
  end

  def update
    @job = Job.find_by_token params[:token]
    if @job.update job_params
      if @job.published?
        redirect_to @job, notice: "Congratulation your ad is online, share the link !"
      else
        redirect_to preview_job_path
      end
    else
      render action: 'new'
    end
  end

  def preview
    if session[:job_token]
      @job = Job.find_by_token session[:job_token]
      session[:job_token] = nil
    else
      redirect_to new_job_path
    end
  end

  def publish
    @job = Job.find_by_token params[:token]
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :apply, :location, :email, :company_name, :company_url, :published, :logo )
  end
end
