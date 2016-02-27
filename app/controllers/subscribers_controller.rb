class SubscribersController < ApplicationController

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      SubscriberMailer.send_subscriber_email(@subscriber).deliver
      redirect_to jobs_path
    else
      render 'new'
    end
  end

  private
   def subscriber_params
    params.require(:subscriber).permit(:email, :job_id)
  end
end
