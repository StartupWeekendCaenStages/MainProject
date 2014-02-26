class UserMailer < ActionMailer::Base

  def send_notif(email)
    mail(from: "vincent@influence-pc.fr",
    	 to: email,
         body: "coucou",
         content_type: "text/html",
         subject: "Already rendered!")
  end

end
