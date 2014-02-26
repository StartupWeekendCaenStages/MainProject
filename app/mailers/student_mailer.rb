class StudentMailer < ActionMailer::Base
  default from: "from@example.com"
  def send_notif(email)
    mail(from: "vincent@influence-pc.fr",
         to: email,
         content_type: "text/html",
         subject: "Already rendered!",
         body: "coucou")
  end
end
