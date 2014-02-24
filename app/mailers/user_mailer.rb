class UserMailer < ActionMailer::Base
  default from: "berthe_s@epitech.eu"

  def send_notif(email)
    mail(to: email,
         body: "coucou",
         content_type: "text/html",
         subject: "Already rendered!")
  end

end
