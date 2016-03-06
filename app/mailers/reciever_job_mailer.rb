class RecieverJobMailer < ActionMailer::Base
  default from: "thione.sow@gmail.com"

  def notify_subscriber_email(subscriber, job)
    @subscriber = subscriber
    mail(:to => subscriber.email, bcc: 'sow.francis@gmail.com', :subject => "Une nouvelle offre a été poster!")
  end

 
end
