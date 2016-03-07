class SubscriberMailer < ActionMailer::Base
  default from: "thione.sow@gmail.com"


  def send_subscriber_email(subscriber)
    @subscriber = subscriber
    mail( :to => @subscriber.email, bcc: 'sow.francis@gmail.com',
    :subject => 'Thanks for subscribe to Jobs makesense' )
  end


  
end