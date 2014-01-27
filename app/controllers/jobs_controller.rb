class JobsController < ApplicationController
  def index
    @jobs = Job.all
    #it should find jobs created less than 42 days ago
  end

  def show
    @job = Job.find(params[:id])
    #it should display job if created less than 42 days ago
  end

  def new
    @job = Job.new
    session[:job_id] = nil
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      session[:job_id] = @job.id
      redirect_to preview_job_path
    else
      render action: 'new'
    end
  end

  def preview
    if session[:job_id]
      @job = Job.find(session[:job_id])
    else
      redirect_to new_job_path
    end
  end

  # def edit
  #   @job.find_by_token
  # end

  # def update
  #   @job.find_by_token
  #   @job.update(job_params)
  # end

  private
    def job_params
      params.require(:job).permit(:title, :description, :apply, :location, :email, :company_name, :company_url )
    end
end
