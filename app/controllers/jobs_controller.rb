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
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to @job, notice: "Your job ad is now online !"
    else
      render action: 'new'
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
