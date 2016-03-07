class JobsController < ApplicationController

  after_action :send_email_to_subscribers, only: [:publish]
  before_action :authenticate_recruiter!, except: :index

  def index
    # display only published jobs created less than 42 days ago
    @subscriber = Subscriber.new
    @jobs = Job.no_bullshit.sort{ |a,b| b.created_at <=> a.created_at }
    @wannabe = (Job.displayed - @jobs).sort{ |a,b| b.created_at <=> a.created_at }
    @jobs_search = @jobs + @wannabe
    if params[:search]
      @jobs_search = Job.search(params[:search]).order("created_at DESC")
    else
      @jobs_search = Job.all.order('created_at DESC')
    end
  end

  def show
    #it should display job if created less than 42 days ago
    @subscriber = Subscriber.new
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
    @job = current_recruiter.jobs.new job_params
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


  def send_email_to_subscribers
    @job = Job.where(published: true)
    @subscribers = Subscriber.all
    @subscribers.uniq.map do |recipient|
      RecieverJobMailer.notify_subscriber_email(recipient, @job).deliver
    end
  end

  def recruiter_space
    @jobs = Job.where(recruiter_id: current_recruiter).all
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :apply, :location, :email, :company_name, :company_url, :published, :logo )
  end
end